<template>
  <div class="app-form mt20 ml40">
    <h5 class="form-tit">编辑</h5>
    <section>
      <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini" :inline-message="true">
        <div class="mt30 ml15">
                      <el-form-item label="id：">
                <el-input v-model="postForm.id" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="answerId：">
                <el-input v-model="postForm.answerId" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="reason：">
                <el-input v-model="postForm.reason" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="id0：">
                <el-input v-model="postForm.id0" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="userName：">
                <el-input v-model="postForm.userName" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="questionId：">
                <el-input v-model="postForm.questionId" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="questionTitle：">
                <el-input v-model="postForm.questionTitle" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="content：">
                <el-input v-model="postForm.content" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="deleteFlag：">
                <el-input v-model="postForm.deleteFlag" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="status：">
                <el-input v-model="postForm.status" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="blackFlag：">
                <el-input v-model="postForm.blackFlag" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="time：">
                <el-input v-model="postForm.time" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="answerId0：">
                <el-input v-model="postForm.answerId0" maxlength="100"></el-input>
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
              answerId0: ''
      }
      }
          ;
      },
      created() {
          let self = this;
      /**
       * 1.接收外界参数
       */
          self.queryByPrimaryKey()
      },
      watch: {},
      methods: {
          //获取具体的配置
          queryByPrimaryKey() {
              let self = this;
              self.$http.get(self.api.queryVReportAnswerAnswerByPrimaryKey, {
                  params: {
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

              sourceParams.append('id', self.postForm.id);
              sourceParams.append('answerId', self.postForm.answerId);
              sourceParams.append('reason', self.postForm.reason);
              sourceParams.append('id0', self.postForm.id0);
              sourceParams.append('userName', self.postForm.userName);
              sourceParams.append('questionId', self.postForm.questionId);
              sourceParams.append('questionTitle', self.postForm.questionTitle);
              sourceParams.append('content', self.postForm.content);
              sourceParams.append('deleteFlag', self.postForm.deleteFlag);
              sourceParams.append('status', self.postForm.status);
              sourceParams.append('blackFlag', self.postForm.blackFlag);
              sourceParams.append('time', self.postForm.time);
              sourceParams.append('answerId0', self.postForm.answerId0);
              /**
               * 转json
               */
              var sourceParamsJson = {};
              sourceParams.forEach((value, key) => sourceParamsJson[key] = value);
              var targetParamsJson = {};
              targetParams.forEach((value, key) => targetParamsJson[key] = value);

              self.$http.post(self.api.updateVReportAnswerAnswerByPrimaryKey, {
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
                                      path: '/VReportAnswerAnswerModuleList'
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
              window.open("#/VReportAnswerAnswerModuleList", '_self');
          }
      }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
