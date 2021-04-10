<template>
  <div class="app-form mt20 ml40">
    <h5 class="form-tit">编辑</h5>
    <section>
      <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini" :inline-message="true">
        <div class="mt30 ml15">
                      <el-form-item label="userName：">
                <el-input v-model="postForm.userName" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="questionId：">
                <el-input v-model="postForm.questionId" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="questionTitle：">
                <el-input v-model="postForm.questionTitle" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="answerContent：">
                <el-input v-model="postForm.answerContent" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="deleteFlag：">
                <el-input v-model="postForm.deleteFlag" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="id：">
                <el-input v-model="postForm.id" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="status：">
                <el-input v-model="postForm.status" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="approveStatus：">
                <el-input v-model="postForm.approveStatus" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="userDeleteFlag：">
                <el-input v-model="postForm.userDeleteFlag" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="blackListUser：">
                <el-input v-model="postForm.blackListUser" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="logo：">
                <el-input v-model="postForm.logo" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="pvCount：">
                <el-input v-model="postForm.pvCount" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="userId：">
                <el-input v-model="postForm.userId" maxlength="100"></el-input>
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
              userName: '',
              questionId: '',
              questionTitle: '',
              answerContent: '',
              deleteFlag: '',
              id: '',
              status: '',
              approveStatus: '',
              userDeleteFlag: '',
              blackListUser: '',
              logo: '',
              pvCount: '',
              userId: ''
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
              self.$http.get(self.api.queryVAnswerUserByPrimaryKey, {
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

              sourceParams.append('userName', self.postForm.userName);
              sourceParams.append('questionId', self.postForm.questionId);
              sourceParams.append('questionTitle', self.postForm.questionTitle);
              sourceParams.append('answerContent', self.postForm.answerContent);
              sourceParams.append('deleteFlag', self.postForm.deleteFlag);
              sourceParams.append('id', self.postForm.id);
              sourceParams.append('status', self.postForm.status);
              sourceParams.append('approveStatus', self.postForm.approveStatus);
              sourceParams.append('userDeleteFlag', self.postForm.userDeleteFlag);
              sourceParams.append('blackListUser', self.postForm.blackListUser);
              sourceParams.append('logo', self.postForm.logo);
              sourceParams.append('pvCount', self.postForm.pvCount);
              sourceParams.append('userId', self.postForm.userId);
              /**
               * 转json
               */
              var sourceParamsJson = {};
              sourceParams.forEach((value, key) => sourceParamsJson[key] = value);
              var targetParamsJson = {};
              targetParams.forEach((value, key) => targetParamsJson[key] = value);

              self.$http.post(self.api.updateVAnswerUserByPrimaryKey, {
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
                                      path: '/VAnswerUserModuleList'
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
              window.open("#/VAnswerUserModuleList", '_self');
          }
      }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
