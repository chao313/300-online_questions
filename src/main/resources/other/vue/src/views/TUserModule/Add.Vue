<template>
  <div class="app-form mt20 ml40">
    <h5 class="form-tit">编辑</h5>
    <section>
      <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini" :inline-message="true">
        <div class="mt30 ml15">
                      <el-form-item label="id：">
                <el-input v-model="postForm.id" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="name：">
                <el-input v-model="postForm.name" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="password：">
                <el-input v-model="postForm.password" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="salt：">
                <el-input v-model="postForm.salt" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="phone：">
                <el-input v-model="postForm.phone" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="email：">
                <el-input v-model="postForm.email" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="status：">
                <el-input v-model="postForm.status" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="createTime：">
                <el-input v-model="postForm.createTime" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="updateTime：">
                <el-input v-model="postForm.updateTime" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="deleteFlag：">
                <el-input v-model="postForm.deleteFlag" maxlength="100"></el-input>
            </el-form-item>
            <el-form-item label="approveStatus：">
                <el-input v-model="postForm.approveStatus" maxlength="100"></el-input>
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
              pvCount: ''
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
              params.append('name', self.postForm.name);
              params.append('password', self.postForm.password);
              params.append('salt', self.postForm.salt);
              params.append('phone', self.postForm.phone);
              params.append('email', self.postForm.email);
              params.append('status', self.postForm.status);
              params.append('createTime', self.postForm.createTime);
              params.append('updateTime', self.postForm.updateTime);
              params.append('deleteFlag', self.postForm.deleteFlag);
              params.append('approveStatus', self.postForm.approveStatus);
              params.append('blackListUser', self.postForm.blackListUser);
              params.append('logo', self.postForm.logo);
              params.append('pvCount', self.postForm.pvCount);
              /**
               * 转json
               */
              var paramsJson = {};
              params.forEach((value, key) => paramsJson[key] = value);

              self.$http.post(self.api.insertTUser, paramsJson, {
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
                                      path: '/TUserModuleList'
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
              window.open("#/TUserModuleList", '_self');
          }
      }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
