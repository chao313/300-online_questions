<template>
  <div class="app-form mt20 ml40">
    <h5 class="form-tit">编辑</h5>
    <section>
      <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini" :inline-message="true">
        <div class="mt30 ml15">
                        <el-form-item label="id：">
                  <el-input v-model="postForm.id" maxlength="100" :disabled=true></el-input>
              </el-form-item>
            <el-form-item label="questionId：">
                <el-input v-model="postForm.questionId" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="questionName：">
                <el-input v-model="postForm.questionName" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="reason：">
                <el-input v-model="postForm.reason" maxlength="100"></el-input>
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
              questionId: '',
              questionName: '',
              reason: ''
      }
      }
          ;
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
              self.$http.get(self.api.queryTReportQuestionByPrimaryKey, {
                  params: {
                id:id
          }
          },function (response) {
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

              sourceParams.append('questionId', self.postForm.questionId);
              sourceParams.append('questionName', self.postForm.questionName);
              sourceParams.append('reason', self.postForm.reason);
              targetParams.append('id', id);
              /**
               * 转json
               */
              var sourceParamsJson = {};
              sourceParams.forEach((value, key) => sourceParamsJson[key] = value);
              var targetParamsJson = {};
              targetParams.forEach((value, key) => targetParamsJson[key] = value);

              self.$http.post(self.api.updateTReportQuestionByPrimaryKey, {
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
                                      path: '/TReportQuestionModuleList'
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
                  }else {
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
              window.open("#/TReportQuestionModuleList", '_self');
          }
      }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
