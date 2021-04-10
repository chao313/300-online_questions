<template>
    <div class="app-container">
        <div class="mt20">
            <el-form :inline="true" size="mini">
                <el-form-item label="用户名">
                    <el-input v-model="search.userName" placeholder="请输入"></el-input>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" class="el-button-search" @click="searchEvent()">查询</el-button>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" class="el-button-search" @click="searchRest()">重置
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
                        <!--显示的字段 - 中文-->
                        <th>举报理由</th>
                        <th>回答用户的Name</th>
                        <th>问题的title</th>
                        <th>回复的内容</th>
                        <th>是否黑名单</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr v-for="(info,index) in dataList">
                        <td>{{index+1}}</td>
                        <td>{{info.reason}}</td>
                        <td>{{info.userName}}</td>
                        <td>{{info.questionTitle}}</td>
                        <template v-if="info.content">
                            <template>
                                {{base64Decode(info.content).substr(0, 30)}}
                            </template>
                            <template v-if="base64Decode(info.content).length > 30">
                                ...
                            </template>
                        </template>
                        <template v-else>
                            <td>暂无内容</td>
                        </template>
                        <template v-if="info.blackFlag == 0">
                            <td>未屏蔽</td>
                        </template>
                        <template v-else>
                            <td>已屏蔽</td>
                        </template>
                        <td>
                            <span @click="routerToView(info.id0)">查看</span>
                            <span @click="routerToEdit(info.id0)">编辑</span>
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
                    answerId: '',
                    reason: '',
                    id0: '',
                    userName: '',
                    questionId: '',
                    questionTitle: '',
                    content: '',
                    deleteFlag: '',
                    status: '',
                    blackFlag: '',
                    time: '',
                    answerId0: '',
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
        computed: {
            base64Decode() {
                return function (value) {

                    return decodeURIComponent(atob(value));

                }
            },
            path() {
                return function (value) {

                    if (value == null) {
                        return 'local/avatar-mid-img.png';
                    } else {

                        return BASE_URL + "/" + value;
                    }
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
                if (self.search.answerId != null && self.search.answerId != '') {
                    params.append("answerId", self.search.answerId);
                }
                if (self.search.reason != null && self.search.reason != '') {
                    params.append("reason", self.search.reason);
                }
                if (self.search.id0 != null && self.search.id0 != '') {
                    params.append("id0", self.search.id0);
                }
                if (self.search.userName != null && self.search.userName != '') {
                    params.append("userName", self.search.userName);
                }
                if (self.search.questionId != null && self.search.questionId != '') {
                    params.append("questionId", self.search.questionId);
                }
                if (self.search.questionTitle != null && self.search.questionTitle != '') {
                    params.append("questionTitle", self.search.questionTitle);
                }
                if (self.search.content != null && self.search.content != '') {
                    params.append("content", self.search.content);
                }
                if (self.search.deleteFlag != null && self.search.deleteFlag != '') {
                    params.append("deleteFlag", self.search.deleteFlag);
                }
                if (self.search.status != null && self.search.status != '') {
                    params.append("status", self.search.status);
                }
                if (self.search.blackFlag != null && self.search.blackFlag != '') {
                    params.append("blackFlag", self.search.blackFlag);
                }
                if (self.search.time != null && self.search.time != '') {
                    params.append("time", self.search.time);
                }
                if (self.search.answerId0 != null && self.search.answerId0 != '') {
                    params.append("answerId0", self.search.answerId0);
                }
                var paramsJson = {};
                params.forEach((value, key) => paramsJson[key] = value);
                self.$http.post(self.api.queryBasePageHelperVReportAnswerAnswer + "?pageNum=" + self.search.pageNum + "&pageSize=" + self.search.pageSize,
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
            deleteByPrimaryKey() {
                let self = this;
                this.$confirm('是否删除该条数据？', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    center: true
                }).then(() => {
                    self.$http.get(self.api.deleteVReportAnswerAnswerByPrimaryKey
                        , {
                            params: {}
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
                let queryStr = "&id=" + id + " ";
                window.open("#/TAnswerModuleView" + "?" + queryStr, '_self');
            },
            routerToEdit(id) {
                //跳转携带参数
                let queryStr = "&id=" + id + " ";
                window.open("#/TAnswerModuleEdit" + "?" + queryStr, '_self');
            },
            routerToAdd() {
                window.open("#/VReportAnswerAnswerModuleAdd", '_self');
            },
            searchEvent() {
                this.queryBase();
            },
            searchRest() {
                let self = this;
                self.search.id = '';
                self.search.answerId = '';
                self.search.reason = '';
                self.search.id0 = '';
                self.search.userName = '';
                self.search.questionId = '';
                self.search.questionTitle = '';
                self.search.content = '';
                self.search.deleteFlag = '';
                self.search.status = '';
                self.search.blackFlag = '';
                self.search.time = '';
                self.search.answerId0 = '';
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
