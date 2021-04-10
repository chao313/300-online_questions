<template>
    <div class="app-container">
        <div class="mt20">
            <el-form :inline="true" size="mini">
                                <el-form-item label="id">
                    <el-input v-model="search.id" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="userName">
                    <el-input v-model="search.userName" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="questionId">
                    <el-input v-model="search.questionId" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="questionTitle">
                    <el-input v-model="search.questionTitle" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="content">
                    <el-input v-model="search.content" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="deleteFlag">
                    <el-input v-model="search.deleteFlag" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="status">
                    <el-input v-model="search.status" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="blackFlag">
                    <el-input v-model="search.blackFlag" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="time">
                    <el-input v-model="search.time" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="answerId">
                    <el-input v-model="search.answerId" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" class="el-button-search" @click="searchEvent()">查询</el-button>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" class="el-button-search" @click="searchRest()">重置
                    </el-button>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" class="el-button-search" @click="routerToAdd()">添加
                    </el-button>
                </el-form-item>
            </el-form>
        </div>
        <div class="app-list">
            <div class="app-tab">
                <table>
                    <thead>
                    <tr>
                        <th>id</th>
                        <!--显示的字段 - 英文-->
                        <th>id</th>
                        <th>userName</th>
                        <th>questionId</th>
                        <th>questionTitle</th>
                        <th>content</th>
                        <th>deleteFlag</th>
                        <th>status</th>
                        <th>blackFlag</th>
                        <th>time</th>
                        <th>answerId</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>序号</th>
                        <!--显示的字段 - 中文-->
                        <th>回答的uuid</th>
                        <th>回答用户的Name</th>
                        <th>问题的id</th>
                        <th>问题的title</th>
                        <th>问题的内容</th>
                        <th>是否删除</th>
                        <th>状态</th>
                        <th>是否黑名单</th>
                        <th>创建时间</th>
                        <th>回答的问题id</th>
                        <th>操作</th>
                    </tr>

                    <tbody>
                    <tr v-for="(info,index) in dataList">
                        <td>{{index+1}}</td>
                        <!--显示的字段 - 具体数据-->
                        <td>{{info.id}}</td>
                        <td>{{info.userName}}</td>
                        <td>{{info.questionId}}</td>
                        <td>{{info.questionTitle}}</td>
                        <td>{{info.content}}</td>
                        <td>{{info.deleteFlag}}</td>
                        <td>{{info.status}}</td>
                        <td>{{info.blackFlag}}</td>
                        <td>{{info.time}}</td>
                        <td>{{info.answerId}}</td>
                        <td>
                            <span @click="routerToView(info.id)">查看</span>
                            <span @click="routerToEdit(info.id)">编辑</span>
                            <span @click="deleteByPrimaryKey(info.id)">删除</span>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <p v-show="total == 0" class="no-data-tip">没有找到相关数据！</p>
                <div>
                    <pre>{{jsonData}}</pre>
                </div>
            </div>
            <div class="mt10">
                <!--/** */:page-size 数一页的数量！！！-->
                <el-pagination v-show="pageInfo.list.length > 0"
                               background
                               @current-change="handleCurrentChange"
                               :current-page.sync="pageInfo.pageNum"
                               :page-size="pageInfo.pageSize"
                               layout="total, prev, pager, next, jumper"
                               :total="pageInfo.total">
                </el-pagination>
            </div>

        </div>

    </div>

</template>

<script>
    import {getPreDay} from '@/utils/index.js'

    export default {
        data() {
            return {
                policyIdList: [],
                policyId: '',
                statuses: [{value: 1, title: '生效'}, {value: 2, title: '失效'}, {value: null, title: '全部'}],
                status: '',
                dataList: [],
                total: -1,
                currentPage: 1,
                pageSize: 10,
                start: '',
                end: '',
                plateNo: '',
                exitStation: '',
                exitStationList: [],
                resultDetail: {},
                viewDialogVisible: false,
                startTime: '',
                endTime: '',
                timeRange: [],
                registId: '',
                jsonData: '',
                search:{
                  id:'',
                  userName:'',
                  questionId:'',
                  questionTitle:'',
                  content:'',
                  deleteFlag:'',
                  status:'',
                  blackFlag:'',
                  time:'',
                  answerId:'',
                  pageNum: 1,
                  pageSize: 10
                },
                pageInfo: {
                "endRow": 10,
                "firstPage": 1,
                "hasNextPage": true,
                "hasPreviousPage": false,
                "isFirstPage": true,
                "isLastPage": false,
                "lastPage": 8,
                "list": [],
                "navigatePages": 8,
                "navigatepageNums": [1, 2, 3, 4, 5, 6, 7, 8],
                "nextPage": 2,
                "orderBy": "",
                "pageNum": 1,
                "pageSize": 10,
                "pages": 1810,
                "prePage": 0,
                "size": 10,
                "startRow": 1,
                "total": 0
             }
           }
        },
        mounted() {
            let self = this;
        },
        created() {
            this.queryBase();
        },
        watch: {},
        methods: {//获取具体的配置
            queryBase() {
                let self = this;
                var params = new FormData();
                if(self.search.id != null && self.search.id !=''){
                    params.append("id",self.search.id);
                }
                if(self.search.userName != null && self.search.userName !=''){
                    params.append("userName",self.search.userName);
                }
                if(self.search.questionId != null && self.search.questionId !=''){
                    params.append("questionId",self.search.questionId);
                }
                if(self.search.questionTitle != null && self.search.questionTitle !=''){
                    params.append("questionTitle",self.search.questionTitle);
                }
                if(self.search.content != null && self.search.content !=''){
                    params.append("content",self.search.content);
                }
                if(self.search.deleteFlag != null && self.search.deleteFlag !=''){
                    params.append("deleteFlag",self.search.deleteFlag);
                }
                if(self.search.status != null && self.search.status !=''){
                    params.append("status",self.search.status);
                }
                if(self.search.blackFlag != null && self.search.blackFlag !=''){
                    params.append("blackFlag",self.search.blackFlag);
                }
                if(self.search.time != null && self.search.time !=''){
                    params.append("time",self.search.time);
                }
                if(self.search.answerId != null && self.search.answerId !=''){
                    params.append("answerId",self.search.answerId);
                }
                var paramsJson = {};
                params.forEach((value, key) => paramsJson[key] = value);
                self.$http.post(self.api.queryBasePageHelperTAnswerSecond+ "?pageNum=" + self.search.pageNum + "&pageSize=" + self.search.pageSize,
                paramsJson,{

                },function (response) {
                   self.pageInfo = response.content;
                   self.dataList = response.content.list;
                }, function (response) {
                    //失败回调
                    self.$message({
                        type: 'warning',
                        message: '请求异常',
                        duration: 1000
                    });
                })

            },
            deleteByPrimaryKey(id) {
                let self = this;
                this.$confirm('是否删除该条数据？', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    center: true
                }).then(() => {
                    self.$http.get(self.api.deleteTAnswerSecondByPrimaryKey
                        ,{
                     params: {
                       id:id 
                  }
                 },
                 function (response) {
                    if (response.code == 0) {
                        if (response.content == true) {
                            self.$message({
                                type: 'success',
                                message: '删除成功',
                                duration: 2000
                            });
                            self.queryBase();
                        } else {
                            self.$message({
                                type: 'warning',
                                message: '删除失败',
                                duration: 2000
                            });

                        }
                    } else {
                        self.$message({
                            type: 'error',
                            message: response.msg,
                            duration: 2000
                        });
                    }
                },
                function (response) {
                    console.log(response);
                    //失败回调
                    self.$message({
                        type: 'error',
                        message: "请求异常",
                        duration: 2000
                    });
                }
            )

            })
            },
            routerToView(id) {
                //跳转携带参数
                let queryStr="";
                    queryStr = queryStr + "id=" + id + "";
                window.open("#/TAnswerSecondModuleView" + "?"+queryStr, '_self');
            },
            routerToEdit(id) {
                //跳转携带参数
                let queryStr="";
                    queryStr = queryStr + "id=" + id + "";
                //跳转携带参数
                window.open("#/TAnswerSecondModuleEdit"+ "?"+queryStr, '_self');
            },
            routerToAdd() {
                window.open("#/TAnswerSecondModuleAdd", '_self');
            },
            searchEvent(){
                this.queryBase();
            },
            searchRest(){
                let self = this;
                self.search.id = '';
                self.search.userName = '';
                self.search.questionId = '';
                self.search.questionTitle = '';
                self.search.content = '';
                self.search.deleteFlag = '';
                self.search.status = '';
                self.search.blackFlag = '';
                self.search.time = '';
                self.search.answerId = '';
                this.queryBase();
            },
            handleCurrentChange(currentChange) {
                let self = this;
                self.search.pageNum = self.pageInfo.pageNum;
                self.search.pageSize = self.pageInfo.pageSize;
                self.searchEvent();
            }

        }

    }
</script>

<style rel="stylesheet/scss" lang="scss">
    .video-detail {

    p {
        display: inline-block;
        width: 40%;
        vertical-align: top;
    }

    label {
        width: 120px;
        display: inline-block;
    }

    span {
        color: #888;
    }

    }
</style>
