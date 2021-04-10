<template>
    <div class="app-form mt20 ml40">
        <h5 class="form-tit">查看</h5>
        <section>
            <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini"
                     :inline-message="true">
                <div class="mt30 ml15">
                    <el-form-item label="发起人：">
                        <el-input v-model="postForm.userName" maxlength="100" :disabled=true></el-input>
                    </el-form-item>
                    <el-form-item label="标题：">
                        <el-input v-model="postForm.title" maxlength="100" :disabled=true></el-input>
                    </el-form-item>
                    <el-form-item label="内容：">
                        <el-input v-html="base64Decode(postForm.content)" maxlength="100" :disabled=true></el-input>
                    </el-form-item>
                    <el-form-item label="类别：">
                        <el-input v-model="postForm.tag" maxlength="100" :disabled=true></el-input>
                    </el-form-item>
                    <el-form-item label="发起时间：">
                        <el-input v-model="postForm.createTime" maxlength="100" :disabled=true></el-input>
                    </el-form-item>
                </div>
            </el-form>
        </section>
        <div class="mt40 ml40">
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
            };
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
                }, function (response) {
                    //失败回调
                    self.$message({
                        type: 'warning',
                        message: '请求异常',
                        duration: 1000
                    });
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
