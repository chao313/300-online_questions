<template>
    <div class="app-form mt20 ml40">
        <h5 class="form-tit">编辑</h5>
        <section>
            <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini"
                     :inline-message="true">
                <div class="mt30 ml15">
                    <el-form-item label="id：">
                        <el-input v-model="postForm.id" maxlength="100" :disabled=true></el-input>
                    </el-form-item>
                    <el-form-item label="userName：">
                        <el-input v-model="postForm.userName" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="title：">
                        <el-input v-model="postForm.title" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="content：">
                        <el-input v-html="base64Decode(postForm.content)" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="tag：">
                        <el-input v-model="postForm.tag" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="isSave：">
                        <el-input v-model="postForm.isSave" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="status：">
                        <el-input v-model="postForm.status" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="deleteFlag：">
                        <el-input v-model="postForm.deleteFlag" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="blackFlag：">
                        <el-input v-model="postForm.blackFlag" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="createTime：">
                        <el-input v-model="postForm.createTime" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="updateTime：">
                        <el-input v-model="postForm.updateTime" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="pvCount：">
                        <el-input v-model="postForm.pvCount" maxlength="100"></el-input>
                    </el-form-item>
                    <el-form-item label="isTop：">
                        <el-input v-model="postForm.isTop" maxlength="100"></el-input>
                    </el-form-item>
                </div>
            </el-form>
        </section>
        <div class="mt40 ml40">
            <el-button type="primary" @click="submitEditForm('postForm')">确定更新</el-button>
            <el-button type="primary" class="el-button-search" @click="routerToList()">返回列表</el-button>
        </div>
    </div>

</template>
<script>
    export default {
        name: 'moduleDetail',
        props: {
            isEdit: {
                type: Boolean,
                default: false
            }
        },
        data() {
            return {
                postForm: {
                    id: '',
                    userName: '',
                    title: '',
                    content: '',
                    tag: '',
                    isSave: '',
                    status: '',
                    deleteFlag: '',
                    blackFlag: '',
                    createTime: '',
                    updateTime: '',
                    pvCount: '',
                    isTop: ''
                }
            }
                ;
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
        created() {
            let self = this;
            /**
             * 1.接收外界参数
             */
            const id = this.$route.query && this.$route.query.id
            self.queryByPrimaryKey(id)
        },
        watch: {},
        methods: {
            //获取具体的配置
            queryByPrimaryKey(id) {
                let self = this;
                self.$http.get(self.api.queryTQuestionsByPrimaryKey, {
                        params: {
                            id: id
                        }
                    }, function (response) {
                        if (response.code == 0) {
                            self.postForm = response.content;
                            self.$message({
                                type: 'success',
                                message: '查询成功',
                                duration: 2000
                            });
                        } else {
                            self.$message({
                                type: 'error',
                                message: response.msg,
                                duration: 2000
                            });
                        }
                    },
                    function (response) {
                        //失败回调
                        self.$message({
                            type: 'warning',
                            message: '请求异常',
                            duration: 1000
                        });
                    }
                )
            },

            submitEditForm(formName) {
                let self = this;
                var sourceParams = new FormData();
                var targetParams = new FormData();
                /**
                 * 处理外界的参数 -> 用于更新
                 */
                const id = this.$route.query && this.$route.query.id

                sourceParams.append('userName', self.postForm.userName);
                sourceParams.append('title', self.postForm.title);
                sourceParams.append('content', self.postForm.content);
                sourceParams.append('tag', self.postForm.tag);
                sourceParams.append('isSave', self.postForm.isSave);
                sourceParams.append('status', self.postForm.status);
                sourceParams.append('deleteFlag', self.postForm.deleteFlag);
                sourceParams.append('blackFlag', self.postForm.blackFlag);
                sourceParams.append('createTime', self.postForm.createTime);
                sourceParams.append('updateTime', self.postForm.updateTime);
                sourceParams.append('pvCount', self.postForm.pvCount);
                sourceParams.append('isTop', self.postForm.isTop);
                targetParams.append('id', id);
                /**
                 * 转json
                 */
                var sourceParamsJson = {};
                sourceParams.forEach((value, key) => sourceParamsJson[key] = value);
                var targetParamsJson = {};
                targetParams.forEach((value, key) => targetParamsJson[key] = value);

                self.$http.post(self.api.updateTQuestionsByPrimaryKey, {
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
                                duration: 500,
                                onClose: function () {
                                    self.$router.push({
                                        path: '/TQuestionsModuleList'
                                    })
                                }
                            });

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
            routerToList() {
                //跳转回List
                window.open("#/TQuestionsModuleList", '_self');
            }
        }
    }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
