<template>
    <div class="app-container">
        <div class="mt20">
            <el-form :inline="true" size="mini">
                                <el-form-item label="paramId">
                    <el-input v-model="search.paramId" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="paramValue">
                    <el-input v-model="search.paramValue" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="paramDesc">
                    <el-input v-model="search.paramDesc" placeholder="请输入"></el-input>
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
                        <th>paramId</th>
                        <th>paramValue</th>
                        <th>paramDesc</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>序号</th>
                        <!--显示的字段 - 中文-->
                        <th>参数id</th>
                        <th>参数值</th>
                        <th>参数描述</th>
                        <th>操作</th>
                    </tr>

                    <tbody>
                    <tr v-for="(info,index) in dataList">
                        <td>{{index+1}}</td>
                        <!--显示的字段 - 具体数据-->
                        <td>{{info.paramId}}</td>
                        <td>{{info.paramValue}}</td>
                        <td>{{info.paramDesc}}</td>
                        <td>
                            <span @click="routerToView(info.paramId)">查看</span>
                            <span @click="routerToEdit(info.paramId)">编辑</span>
                            <span @click="deleteByPrimaryKey(info.paramId)">删除</span>
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
                  paramId:'',
                  paramValue:'',
                  paramDesc:'',
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
                if(self.search.paramId != null && self.search.paramId !=''){
                    params.append("paramId",self.search.paramId);
                }
                if(self.search.paramValue != null && self.search.paramValue !=''){
                    params.append("paramValue",self.search.paramValue);
                }
                if(self.search.paramDesc != null && self.search.paramDesc !=''){
                    params.append("paramDesc",self.search.paramDesc);
                }
                var paramsJson = {};
                params.forEach((value, key) => paramsJson[key] = value);
                self.$http.post(self.api.queryBasePageHelperTSystemParam+ "?pageNum=" + self.search.pageNum + "&pageSize=" + self.search.pageSize,
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
            deleteByPrimaryKey(paramId) {
                let self = this;
                this.$confirm('是否删除该条数据？', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    center: true
                }).then(() => {
                    self.$http.get(self.api.deleteTSystemParamByPrimaryKey
                        ,{
                     params: {
                       paramId:paramId 
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
            routerToView(paramId) {
                //跳转携带参数
                let queryStr="";
                    queryStr = queryStr + "paramId=" + paramId + "";
                window.open("#/TSystemParamModuleView" + "?"+queryStr, '_self');
            },
            routerToEdit(paramId) {
                //跳转携带参数
                let queryStr="";
                    queryStr = queryStr + "paramId=" + paramId + "";
                //跳转携带参数
                window.open("#/TSystemParamModuleEdit"+ "?"+queryStr, '_self');
            },
            routerToAdd() {
                window.open("#/TSystemParamModuleAdd", '_self');
            },
            searchEvent(){
                this.queryBase();
            },
            searchRest(){
                let self = this;
                self.search.paramId = '';
                self.search.paramValue = '';
                self.search.paramDesc = '';
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
