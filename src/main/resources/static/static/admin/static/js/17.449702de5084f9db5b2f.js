webpackJsonp([17],{"9kdO":function(e,t){},DA4d:function(e,t,o){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var n={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{id:"",name:"",email:"",content:"",blongBlogId:"",createTime:""}}},created:function(){var e=this.$route.query&&this.$route.query.id;this.queryByPrimaryKey(e)},watch:{},methods:{queryByPrimaryKey:function(e){var t=this;t.$http.get(t.api.queryTCommentByPrimaryKey,{params:{id:e}},function(e){0==e.code?(t.postForm=e.content,t.$message({type:"success",message:"查询成功",duration:2e3})):t.$message({type:"error",message:e.msg,duration:2e3})},function(e){t.$message({type:"warning",message:"请求异常",duration:1e3})})},submitEditForm:function(e){var t=this,o=new FormData,n=new FormData,r=this.$route.query&&this.$route.query.id;o.append("name",t.postForm.name),o.append("email",t.postForm.email),o.append("content",t.postForm.content),o.append("blongBlogId",t.postForm.blongBlogId),o.append("createTime",t.postForm.createTime),n.append("id",r);var a={};o.forEach(function(e,t){return a[t]=e});var s={};n.forEach(function(e,t){return s[t]=e}),t.$http.post(t.api.updateTCommentByPrimaryKey,{source:a,target:s},{headers:{"Content-Type":"application/json"}},function(e){0==e.code?1==e.content?t.$message({type:"success",message:"修改成功，页面即将跳转至列表页",duration:500,onClose:function(){t.$router.push({path:"/TCommentModuleList"})}}):t.$message({type:"warning",message:"修改失败",duration:2e3}):t.$message({type:"error",message:e.msg,duration:2e3})},function(e){})},routerToList:function(){window.open("#/TCommentModuleList","_self")}}},r={render:function(){var e=this,t=e.$createElement,o=e._self._c||t;return o("div",{staticClass:"app-form mt20 ml40"},[o("h5",{staticClass:"form-tit"},[e._v("注册配置编辑")]),e._v(" "),o("section",[o("el-form",{ref:"postForm",attrs:{model:e.postForm,rules:e.rules,"label-width":"180px",size:"mini","inline-message":!0}},[o("div",{staticClass:"mt30 ml15"},[o("el-form-item",{attrs:{label:"id："}},[o("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.id,callback:function(t){e.$set(e.postForm,"id",t)},expression:"postForm.id"}})],1),e._v(" "),o("el-form-item",{attrs:{label:"name："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.name,callback:function(t){e.$set(e.postForm,"name",t)},expression:"postForm.name"}})],1),e._v(" "),o("el-form-item",{attrs:{label:"email："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.email,callback:function(t){e.$set(e.postForm,"email",t)},expression:"postForm.email"}})],1),e._v(" "),o("el-form-item",{attrs:{label:"content："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.content,callback:function(t){e.$set(e.postForm,"content",t)},expression:"postForm.content"}})],1),e._v(" "),o("el-form-item",{attrs:{label:"blongBlogId："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.blongBlogId,callback:function(t){e.$set(e.postForm,"blongBlogId",t)},expression:"postForm.blongBlogId"}})],1),e._v(" "),o("el-form-item",{attrs:{label:"createTime："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.createTime,callback:function(t){e.$set(e.postForm,"createTime",t)},expression:"postForm.createTime"}})],1)],1)])],1),e._v(" "),o("div",{staticClass:"mt40 ml40"},[o("el-button",{attrs:{type:"primary"},on:{click:function(t){return e.submitEditForm("postForm")}}},[e._v("确定更新")]),e._v(" "),o("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToList()}}},[e._v("返回列表")])],1)])},staticRenderFns:[]};var a=o("VU/8")(n,r,!1,function(e){o("9kdO")},null,null);t.default=a.exports}});