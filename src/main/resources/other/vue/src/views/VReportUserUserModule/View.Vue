<template>
  <div class="app-form mt20 ml40">
    <h5 class="form-tit">查看</h5>
    <section>
      <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini" :inline-message="true">
        <div class="mt30 ml15">
                    <el-form-item label="id：">
              <el-input v-model="postForm.id" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="userName：">
              <el-input v-model="postForm.userName" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="reason：">
              <el-input v-model="postForm.reason" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="name：">
              <el-input v-model="postForm.name" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="createTime：">
              <el-input v-model="postForm.createTime" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="updateTime：">
              <el-input v-model="postForm.updateTime" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="deleteFlag：">
              <el-input v-model="postForm.deleteFlag" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="approveStatus：">
              <el-input v-model="postForm.approveStatus" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="blackListUser：">
              <el-input v-model="postForm.blackListUser" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="logo：">
              <el-input v-model="postForm.logo" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="pvCount：">
              <el-input v-model="postForm.pvCount" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="status：">
              <el-input v-model="postForm.status" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="email：">
              <el-input v-model="postForm.email" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="phone：">
              <el-input v-model="postForm.phone" maxlength="100" :disabled=true></el-input>
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
          reason: '',
          name: '',
          createTime: '',
          updateTime: '',
          deleteFlag: '',
          approveStatus: '',
          blackListUser: '',
          logo: '',
          pvCount: '',
          status: '',
          email: '',
          phone: ''
        }
      };
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
        self.$http.get(self.api.queryVReportUserUserByPrimaryKey, {
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
            window.open("#/VReportUserUserModuleList", '_self');
        }

    }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
