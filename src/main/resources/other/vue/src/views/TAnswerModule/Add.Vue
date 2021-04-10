<template>
  <div class="app-form mt20 ml40">
    <h5 class="form-tit">编辑</h5>
    <section>
      <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini" :inline-message="true">
        <div class="mt30 ml15">
                      <el-form-item label="id：">
                <el-input v-model="postForm.id" maxlength="100"></el-input>
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
            <el-form-item label="answerId：">
                <el-input v-model="postForm.answerId" maxlength="100"></el-input>
            </el-form-item>
        </div>
      </el-form>
    </section>
    <div class="mt40 ml40">
      <el-button type="primary" @click="submitAddForm('postForm')">确定添加</el-button>
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
              questionId: '',
              questionTitle: '',
              content: '',
              deleteFlag: '',
              status: '',
              blackFlag: '',
              time: '',
              answerId: ''
      }
      }
          ;
      },
      created() {

      },
      watch: {},
      methods: {
          submitAddForm(formName) {
              let self = this;
              let params = new FormData();

              params.append('id', self.postForm.id);
              params.append('userName', self.postForm.userName);
              params.append('questionId', self.postForm.questionId);
              params.append('questionTitle', self.postForm.questionTitle);
              params.append('content', self.postForm.content);
              params.append('deleteFlag', self.postForm.deleteFlag);
              params.append('status', self.postForm.status);
              params.append('blackFlag', self.postForm.blackFlag);
              params.append('time', self.postForm.time);
              params.append('answerId', self.postForm.answerId);
              /**
               * 转json
               */
              var paramsJson = {};
              params.forEach((value, key) => paramsJson[key] = value);

              self.$http.post(self.api.insertTAnswer, paramsJson, {
                  headers: {
                      "Content-Type": "application/json"
                  },
              }, function (response) {
                  if (response.code == 0) {
                      if (response.content == true) {
                          self.$message({
                              type: 'success',
                              message: '添加成功，页面即将跳转至列表页',
                              duration: 500,
                              onClose: function () {
                                  self.$router.push({
                                      path: '/TAnswerModuleList'
                                  })
                              }
                          });

                      } else {
                          self.$message({
                              type: 'warning',
                              message: '添加失败',
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
              window.open("#/TAnswerModuleList", '_self');
          }
      }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
