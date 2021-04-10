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
            <el-form-item label="title：">
                <el-input v-model="postForm.title" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="content：">
                <el-input v-model="postForm.content" maxlength="100"></el-input>
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
      created() {

      },
      watch: {},
      methods: {
          submitAddForm(formName) {
              let self = this;
              let params = new FormData();

              params.append('id', self.postForm.id);
              params.append('userName', self.postForm.userName);
              params.append('title', self.postForm.title);
              params.append('content', self.postForm.content);
              params.append('tag', self.postForm.tag);
              params.append('isSave', self.postForm.isSave);
              params.append('status', self.postForm.status);
              params.append('deleteFlag', self.postForm.deleteFlag);
              params.append('blackFlag', self.postForm.blackFlag);
              params.append('createTime', self.postForm.createTime);
              params.append('updateTime', self.postForm.updateTime);
              params.append('pvCount', self.postForm.pvCount);
              params.append('isTop', self.postForm.isTop);
              /**
               * 转json
               */
              var paramsJson = {};
              params.forEach((value, key) => paramsJson[key] = value);

              self.$http.post(self.api.insertTQuestions, paramsJson, {
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
                                      path: '/TQuestionsModuleList'
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
              window.open("#/TQuestionsModuleList", '_self');
          }
      }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
