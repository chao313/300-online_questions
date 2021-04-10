<template>
    <div class="app-container">
        <div class="mt20">
            <el-form :inline="true" size="mini">
                                <el-form-item label="id">
                    <el-input v-model="search.id" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="name">
                    <el-input v-model="search.name" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="password">
                    <el-input v-model="search.password" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="salt">
                    <el-input v-model="search.salt" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="phone">
                    <el-input v-model="search.phone" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="email">
                    <el-input v-model="search.email" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="status">
                    <el-input v-model="search.status" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="createTime">
                    <el-input v-model="search.createTime" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="updateTime">
                    <el-input v-model="search.updateTime" placeholder="请输入"></el-input>
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
                        <th>name</th>
                        <th>password</th>
                        <th>salt</th>
                        <th>phone</th>
                        <th>email</th>
                        <th>status</th>
                        <th>createTime</th>
                        <th>updateTime</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tr>
                        <th>序号</th>
                        <!--显示的字段 - 中文-->
                        <th>用户登录ID</th>
                        <th>用户姓名</th>
                        <th>密码</th>
                        <th>盐</th>
                        <th>手机号码</th>
                        <th>邮箱</th>
                        <th>0-未启用 1-启用</th>
                        <th>创建时间（申请时间）</th>
                        <th>更新时间</th>
                        <th>操作</th>
                    </tr>

                    <tbody>
                    <tr v-for="(info,index) in dataList">
                        <td>{{index+1}}</td>
                        <!--显示的字段 - 具体数据-->
                        <td>{{info.id}}</td>
                        <td>{{info.name}}</td>
                        <td>{{info.password}}</td>
                        <td>{{info.salt}}</td>
                        <td>{{info.phone}}</td>
                        <td>{{info.email}}</td>
                        <td>{{info.status}}</td>
                        <td>{{info.createTime}}</td>
                        <td>{{info.updateTime}}</td>
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
                  name:'',
                  password:'',
                  salt:'',
                  phone:'',
                  email:'',
                  status:'',
                  createTime:'',
                  updateTime:'',
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
                if(self.search.name != null && self.search.name !=''){
                    params.append("name",self.search.name);
                }
                if(self.search.password != null && self.search.password !=''){
                    params.append("password",self.search.password);
                }
                if(self.search.salt != null && self.search.salt !=''){
                    params.append("salt",self.search.salt);
                }
                if(self.search.phone != null && self.search.phone !=''){
                    params.append("phone",self.search.phone);
                }
                if(self.search.email != null && self.search.email !=''){
                    params.append("email",self.search.email);
                }
                if(self.search.status != null && self.search.status !=''){
                    params.append("status",self.search.status);
                }
                if(self.search.createTime != null && self.search.createTime !=''){
                    params.append("createTime",self.search.createTime);
                }
                if(self.search.updateTime != null && self.search.updateTime !=''){
                    params.append("updateTime",self.search.updateTime);
                }
                var paramsJson = {};
                params.forEach((value, key) => paramsJson[key] = value);
                self.$http.post(self.api.queryBasePageHelperTAdminUser+ "?pageNum=" + self.search.pageNum + "&pageSize=" + self.search.pageSize,
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
                    self.$http.get(self.api.deleteTAdminUserByPrimaryKey
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
                window.open("#/TAdminUserModuleView" + "?"+queryStr, '_self');
            },
            routerToEdit(id) {
                //跳转携带参数
                let queryStr="";
                    queryStr = queryStr + "id=" + id + "";
                //跳转携带参数
                window.open("#/TAdminUserModuleEdit"+ "?"+queryStr, '_self');
            },
            routerToAdd() {
                window.open("#/TAdminUserModuleAdd", '_self');
            },
            searchEvent(){
                this.queryBase();
            },
            searchRest(){
                let self = this;
                self.search.id = '';
                self.search.name = '';
                self.search.password = '';
                self.search.salt = '';
                self.search.phone = '';
                self.search.email = '';
                self.search.status = '';
                self.search.createTime = '';
                self.search.updateTime = '';
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
