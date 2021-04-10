<template>
  <div class="app-form mt20 ml40">
    <h5 class="form-tit">查看</h5>
    <section>
      <el-form :model="postForm" :rules="rules" ref="postForm" label-width="180px" size="mini" :inline-message="true">
        <div class="mt30 ml15">
          <el-form-item label="发起人：">
              <el-input v-model="postForm.userName" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="标题：">
              <el-input v-model="postForm.title" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="内容：">
              <el-input v-model="postForm.content" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="发起时间：">
              <el-input v-model="postForm.createTime" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="类别：">
              <el-input v-model="postForm.tag" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="name：">
              <el-input v-model="postForm.name" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="status0：">
              <el-input v-model="postForm.status0" maxlength="100" :disabled=true></el-input>
          </el-form-item>
          <el-form-item label="deleteFlag0：">
              <el-input v-model="postForm.deleteFlag0" maxlength="100" :disabled=true></el-input>
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
          <el-form-item label="pvCount0：">
              <el-input v-model="postForm.pvCount0" maxlength="100" :disabled=true></el-input>
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
          isTop: '',
          pvCount: '',
          updateTime: '',
          createTime: '',
          blackFlag: '',
          deleteFlag: '',
          status: '',
          isSave: '',
          tag: '',
          id0: '',
          name: '',
          status0: '',
          deleteFlag0: '',
          approveStatus: '',
          blackListUser: '',
          logo: '',
          pvCount0: ''
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
        self.$http.get(self.api.queryVQuestionUserByPrimaryKey, {
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
            window.open("#/VQuestionUserModuleList", '_self');
        }

    }
  }
</script>
<style rel="stylesheet/scss" lang="scss">

</style>
