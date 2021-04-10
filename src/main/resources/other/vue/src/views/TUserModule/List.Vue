<template>
    <div class="app-container">
        <div class="mt20">
            <el-form :inline="true" size="mini">

                <el-form-item label="名称">
                    <el-input v-model="search.name" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="手机号">
                    <el-input v-model="search.phone" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="邮箱">
                    <el-input v-model="search.email" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="审批状态">
                    <el-input v-model="search.approveStatus" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item label="是否拉黑">
                    <el-input v-model="search.blackListUser" placeholder="请输入"></el-input>
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
                        <th>序号</th>
                        <th>用户姓名</th>
                        <th>手机号码</th>
                        <th>邮箱</th>
                        <th>注册时间</th>
                        <th>审批状态</th>
                        <th>是否是黑名单</th>
                        <th>用户头像</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(info,index) in dataList">
                        <td>{{index+1}}</td>
                        <td>{{info.name}}</td>
                        <td>{{info.phone}}</td>
                        <td>{{info.email}}</td>
                        <td>{{info.createTime}}</td>
                        <template v-if="info.approveStatus == 0">
                            <td>待审批</td>
                        </template>
                        <template v-if="info.approveStatus == 1">
                            <td>审批通过</td>
                        </template>
                        <template v-if="info.approveStatus == 2">
                            <td>审批不通过</td>
                        </template>

                        <template v-if="info.blackListUser == 0">
                            <td>不是黑名单</td>
                        </template>
                        <template v-if="info.blackListUser == 1">
                            <td>是黑名单</td>
                        </template>

                        <td>{{info.logo}}</td>
                        <td>
                            <span @click="routerToView(info.name,info.password)">查看</span>
                            <template v-if="info.approveStatus == 0">
                                <span @click="submitEditForm(info.name,1,null)">审批通过</span>
                                <span @click="submitEditForm(info.name,2,null)">审批不通过</span>
                            </template>
                            <template v-if="info.approveStatus == 1">
                                <span @click="submitEditForm(info.name,2,null)">审批不通过</span>
                            </template>
                            <template v-if="info.approveStatus == 2">
                                <span @click="submitEditForm(info.name,1,null)">审批通过</span>
                            </template>
                            <span v-if="info.blackListUser == 0"
                                  @click="submitEditForm(info.name,null,1)">加入黑名单</span>
                            <span v-if="info.blackListUser == 1"
                                  @click="submitEditForm(info.name,null,0)">移出黑名单</span>
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
                search: {
                    id: '',
                    name: '',
                    password: '',
                    salt: '',
                    phone: '',
                    email: '',
                    status: '',
                    createTime: '',
                    updateTime: '',
                    deleteFlag: '',
                    approveStatus: '',
                    blackListUser: '',
                    logo: '',
                    pvCount: '',
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
                if (self.search.id != null && self.search.id != '') {
                    params.append("id", self.search.id);
                }
                if (self.search.name != null && self.search.name != '') {
                    params.append("name", self.search.name);
                }
                if (self.search.password != null && self.search.password != '') {
                    params.append("password", self.search.password);
                }
                if (self.search.salt != null && self.search.salt != '') {
                    params.append("salt", self.search.salt);
                }
                if (self.search.phone != null && self.search.phone != '') {
                    params.append("phone", self.search.phone);
                }
                if (self.search.email != null && self.search.email != '') {
                    params.append("email", self.search.email);
                }
                if (self.search.status != null && self.search.status != '') {
                    params.append("status", self.search.status);
                }
                if (self.search.createTime != null && self.search.createTime != '') {
                    params.append("createTime", self.search.createTime);
                }
                if (self.search.updateTime != null && self.search.updateTime != '') {
                    params.append("updateTime", self.search.updateTime);
                }
                if (self.search.deleteFlag != null && self.search.deleteFlag != '') {
                    params.append("deleteFlag", self.search.deleteFlag);
                }
                if (self.search.approveStatus != null && self.search.approveStatus != '') {
                    params.append("approveStatus", self.search.approveStatus);
                }
                if (self.search.blackListUser != null && self.search.blackListUser != '') {
                    params.append("blackListUser", self.search.blackListUser);
                }
                if (self.search.logo != null && self.search.logo != '') {
                    params.append("logo", self.search.logo);
                }
                if (self.search.pvCount != null && self.search.pvCount != '') {
                    params.append("pvCount", self.search.pvCount);
                }
                var paramsJson = {};
                params.forEach((value, key) => paramsJson[key] = value);
                self.$http.post(self.api.queryBasePageHelperTUser + "?pageNum=" + self.search.pageNum + "&pageSize=" + self.search.pageSize,
                    paramsJson, {}, function (response) {
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
            deleteByPrimaryKey(name, password) {
                let self = this;
                this.$confirm('是否删除该条数据？', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    center: true
                }).then(() => {
                    self.$http.get(self.api.deleteTUserByPrimaryKey
                        , {
                            params: {
                                name: name,
                                password: password
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
            routerToView(name, password) {
                //跳转携带参数
                let queryStr = "";
                queryStr = queryStr + "name=" + name + "&";
                queryStr = queryStr + "password=" + password + "";
                window.open("#/TUserModuleView" + "?" + queryStr, '_self');
            },
            routerToEdit(name, password) {
                //跳转携带参数
                let queryStr = "";
                queryStr = queryStr + "name=" + name + "&";
                queryStr = queryStr + "password=" + password + "";
                //跳转携带参数
                window.open("#/TUserModuleEdit" + "?" + queryStr, '_self');
            },
            routerToAdd() {
                window.open("#/TUserModuleAdd", '_self');
            },
            searchEvent() {
                this.queryBase();
            },
            searchRest() {
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
                self.search.deleteFlag = '';
                self.search.approveStatus = '';
                self.search.blackListUser = '';
                self.search.logo = '';
                self.search.pvCount = '';
                this.queryBase();
            },
            handleCurrentChange(currentChange) {
                let self = this;
                self.search.pageNum = self.pageInfo.pageNum;
                self.search.pageSize = self.pageInfo.pageSize;
                self.searchEvent();
            },
            submitEditForm(name, approveStatus, blackListUser) {
                let self = this;
                var sourceParams = new FormData();
                var targetParams = new FormData();
                /**
                 * 处理外界的参数 -> 用于更新
                 */
                sourceParams.append('approveStatus', approveStatus);
                sourceParams.append('blackListUser', blackListUser);
                targetParams.append('name', name);
                /**
                 * 转json
                 */
                var sourceParamsJson = {};
                sourceParams.forEach((value, key) => sourceParamsJson[key] = value);
                var targetParamsJson = {};
                targetParams.forEach((value, key) => targetParamsJson[key] = value);

                self.$http.post(self.api.updateTUserByPrimaryKey, {
                    "source": sourceParamsJson,
                    "target": targetParamsJson
                }, {
                    headers: {
                        "Content-Type": "application/json"
                    },
                }, function (response) {
                    if (response.code == 0) {
                        if (response.content == true) {
                            self.$message({
                                type: 'success',
                                message: '修改成功，页面即将跳转至列表页',
                                duration: 500
                            });
                            self.queryBase();
                        } else {
                            self.$message({
                                type: 'warning',
                                message: '修改失败',
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
                }, function (response) {
                    //失败回调
                })
            },

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
