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
                <el-form-item label="title">
                    <el-input v-model="search.title" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="content">
                    <el-input v-model="search.content" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="isTop">
                    <el-input v-model="search.isTop" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="pvCount">
                    <el-input v-model="search.pvCount" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="updateTime">
                    <el-input v-model="search.updateTime" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="createTime">
                    <el-input v-model="search.createTime" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="blackFlag">
                    <el-input v-model="search.blackFlag" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="deleteFlag">
                    <el-input v-model="search.deleteFlag" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="status">
                    <el-input v-model="search.status" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="isSave">
                    <el-input v-model="search.isSave" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="tag">
                    <el-input v-model="search.tag" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="id0">
                    <el-input v-model="search.id0" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="name">
                    <el-input v-model="search.name" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="status0">
                    <el-input v-model="search.status0" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="deleteFlag0">
                    <el-input v-model="search.deleteFlag0" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="approveStatus">
                    <el-input v-model="search.approveStatus" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="blackListUser">
                    <el-input v-model="search.blackListUser" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="logo">
                    <el-input v-model="search.logo" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="pvCount0">
                    <el-input v-model="search.pvCount0" placeholder="请输入"></el-input>
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
                        <th>title</th>
                        <th>content</th>
                        <th>isTop</th>
                        <th>pvCount</th>
                        <th>updateTime</th>
                        <th>createTime</th>
                        <th>blackFlag</th>
                        <th>deleteFlag</th>
                        <th>status</th>
                        <th>isSave</th>
                        <th>tag</th>
                        <th>id0</th>
                        <th>name</th>
                        <th>status0</th>
                        <th>deleteFlag0</th>
                        <th>approveStatus</th>
                        <th>blackListUser</th>
                        <th>logo</th>
                        <th>pvCount0</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>序号</th>
                        <!--显示的字段 - 中文-->
                        <th>问题的id</th>
                        <th>问题的发布者name</th>
                        <th>问题的标题</th>
                        <th>问题的内容</th>
                        <th>是否置顶</th>
                        <th>问题的浏览量</th>
                        <th>问题更新时间</th>
                        <th>问题创建时间</th>
                        <th>是否被屏蔽,0未,1是</th>
                        <th>问题是否删除,0未,1是</th>
                        <th>问题是否终结 0没有终结,1，已终结</th>
                        <th>问题是否保存 0草稿, 1 发布</th>
                        <th>问题的类别</th>
                        <th>用户登录ID</th>
                        <th>用户姓名</th>
                        <th>0-未启用 1-启用</th>
                        <th>删除标志: 0未删除，1已删除</th>
                        <th>0: 待审批 1：通过 ：2 拒绝</th>
                        <th>是否是黑名单 1 -> 是 0 -> 不是</th>
                        <th>用户头像</th>
                        <th>用户主页的浏览量</th>
                        <th>操作</th>
                    </tr>

                    <tbody>
                    <tr v-for="(info,index) in dataList">
                        <td>{{index+1}}</td>
                        <!--显示的字段 - 具体数据-->
                        <td>{{info.id}}</td>
                        <td>{{info.userName}}</td>
                        <td>{{info.title}}</td>
                        <td>{{info.content}}</td>
                        <td>{{info.isTop}}</td>
                        <td>{{info.pvCount}}</td>
                        <td>{{info.updateTime}}</td>
                        <td>{{info.createTime}}</td>
                        <td>{{info.blackFlag}}</td>
                        <td>{{info.deleteFlag}}</td>
                        <td>{{info.status}}</td>
                        <td>{{info.isSave}}</td>
                        <td>{{info.tag}}</td>
                        <td>{{info.id0}}</td>
                        <td>{{info.name}}</td>
                        <td>{{info.status0}}</td>
                        <td>{{info.deleteFlag0}}</td>
                        <td>{{info.approveStatus}}</td>
                        <td>{{info.blackListUser}}</td>
                        <td>{{info.logo}}</td>
                        <td>{{info.pvCount0}}</td>
                        <td>
                            <span @click="routerToView()">查看</span>
                            <span @click="routerToEdit()">编辑</span>
                            <span @click="deleteByPrimaryKey()">删除</span>
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
                  title:'',
                  content:'',
                  isTop:'',
                  pvCount:'',
                  updateTime:'',
                  createTime:'',
                  blackFlag:'',
                  deleteFlag:'',
                  status:'',
                  isSave:'',
                  tag:'',
                  id0:'',
                  name:'',
                  status0:'',
                  deleteFlag0:'',
                  approveStatus:'',
                  blackListUser:'',
                  logo:'',
                  pvCount0:'',
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
                if(self.search.title != null && self.search.title !=''){
                    params.append("title",self.search.title);
                }
                if(self.search.content != null && self.search.content !=''){
                    params.append("content",self.search.content);
                }
                if(self.search.isTop != null && self.search.isTop !=''){
                    params.append("isTop",self.search.isTop);
                }
                if(self.search.pvCount != null && self.search.pvCount !=''){
                    params.append("pvCount",self.search.pvCount);
                }
                if(self.search.updateTime != null && self.search.updateTime !=''){
                    params.append("updateTime",self.search.updateTime);
                }
                if(self.search.createTime != null && self.search.createTime !=''){
                    params.append("createTime",self.search.createTime);
                }
                if(self.search.blackFlag != null && self.search.blackFlag !=''){
                    params.append("blackFlag",self.search.blackFlag);
                }
                if(self.search.deleteFlag != null && self.search.deleteFlag !=''){
                    params.append("deleteFlag",self.search.deleteFlag);
                }
                if(self.search.status != null && self.search.status !=''){
                    params.append("status",self.search.status);
                }
                if(self.search.isSave != null && self.search.isSave !=''){
                    params.append("isSave",self.search.isSave);
                }
                if(self.search.tag != null && self.search.tag !=''){
                    params.append("tag",self.search.tag);
                }
                if(self.search.id0 != null && self.search.id0 !=''){
                    params.append("id0",self.search.id0);
                }
                if(self.search.name != null && self.search.name !=''){
                    params.append("name",self.search.name);
                }
                if(self.search.status0 != null && self.search.status0 !=''){
                    params.append("status0",self.search.status0);
                }
                if(self.search.deleteFlag0 != null && self.search.deleteFlag0 !=''){
                    params.append("deleteFlag0",self.search.deleteFlag0);
                }
                if(self.search.approveStatus != null && self.search.approveStatus !=''){
                    params.append("approveStatus",self.search.approveStatus);
                }
                if(self.search.blackListUser != null && self.search.blackListUser !=''){
                    params.append("blackListUser",self.search.blackListUser);
                }
                if(self.search.logo != null && self.search.logo !=''){
                    params.append("logo",self.search.logo);
                }
                if(self.search.pvCount0 != null && self.search.pvCount0 !=''){
                    params.append("pvCount0",self.search.pvCount0);
                }
                var paramsJson = {};
                params.forEach((value, key) => paramsJson[key] = value);
                self.$http.post(self.api.queryBasePageHelperVQuestionUser+ "?pageNum=" + self.search.pageNum + "&pageSize=" + self.search.pageSize,
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
            deleteByPrimaryKey() {
                let self = this;
                this.$confirm('是否删除该条数据？', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    center: true
                }).then(() => {
                    self.$http.get(self.api.deleteVQuestionUserByPrimaryKey
                        ,{
                     params: {
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
            routerToView() {
                //跳转携带参数
                let queryStr="";
                window.open("#/VQuestionUserModuleView" + "?"+queryStr, '_self');
            },
            routerToEdit() {
                //跳转携带参数
                let queryStr="";
                //跳转携带参数
                window.open("#/VQuestionUserModuleEdit"+ "?"+queryStr, '_self');
            },
            routerToAdd() {
                window.open("#/VQuestionUserModuleAdd", '_self');
            },
            searchEvent(){
                this.queryBase();
            },
            searchRest(){
                let self = this;
                self.search.id = '';
                self.search.userName = '';
                self.search.title = '';
                self.search.content = '';
                self.search.isTop = '';
                self.search.pvCount = '';
                self.search.updateTime = '';
                self.search.createTime = '';
                self.search.blackFlag = '';
                self.search.deleteFlag = '';
                self.search.status = '';
                self.search.isSave = '';
                self.search.tag = '';
                self.search.id0 = '';
                self.search.name = '';
                self.search.status0 = '';
                self.search.deleteFlag0 = '';
                self.search.approveStatus = '';
                self.search.blackListUser = '';
                self.search.logo = '';
                self.search.pvCount0 = '';
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
