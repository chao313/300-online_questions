<template>
  <div class="app-form mt20 ml40">
    <h5 class="form-tit">查看</h5>
    <section>
      <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini" :inline-message="true">
        <div class="mt30 ml15">
                    <el-form-item label="userNameFollow：">
              <el-input v-model="postForm.userNameFollow" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="userName：">
              <el-input v-model="postForm.userName" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="cteateTime：">
              <el-input v-model="postForm.cteateTime" maxlength="100" :disabled=true></el-input>
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
          userNameFollow: '',
          userName: '',
          cteateTime: ''
        }
      };
    },
    created() {
      let self = this;
      /**
       * 1.接收外界参数
       */
        const userNameFollow = this.$route.query && this.$route.query.userNameFollow;
        const userName = this.$route.query && this.$route.query.userName
      self.queryByPrimaryKey(userNameFollow,userName)
    },
    watch: {},
    methods: {
       //获取具体的配置
        queryByPrimaryKey(userNameFollow,userName) {
        let self = this;
        self.$http.get(self.api.queryTFollowPersonByPrimaryKey, {
          params: {
              userNameFollow:userNameFollow,
              userName:userName
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
            window.open("#/TFollowPersonModuleList", '_self');
        }

    }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
