webpackJsonp([19],{XX4D:function(e,t,s){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{id:"",userName:"",questionId:"",questionTitle:"",content:"",deleteFlag:"",status:"",blackFlag:"",time:"",answerId:""}}},created:function(){var e=this.$route.query&&this.$route.query.id;this.queryByPrimaryKey(e)},watch:{},methods:{queryByPrimaryKey:function(e){var t=this;t.$http.get(t.api.queryTAnswerSecondByPrimaryKey,{params:{id:e}},function(e){0==e.code?(t.postForm=e.content,t.$message({type:"success",message:"查询成功",duration:2e3})):t.$message({type:"error",message:e.msg,duration:2e3})},function(e){t.$message({type:"warning",message:"请求异常",duration:1e3})})},submitEditForm:function(e){var t=this,s=new FormData,o=new FormData,a=this.$route.query&&this.$route.query.id;s.append("userName",t.postForm.userName),s.append("questionId",t.postForm.questionId),s.append("questionTitle",t.postForm.questionTitle),s.append("content",t.postForm.content),s.append("deleteFlag",t.postForm.deleteFlag),s.append("status",t.postForm.status),s.append("blackFlag",t.postForm.blackFlag),s.append("time",t.postForm.time),s.append("answerId",t.postForm.answerId),o.append("id",a);var r={};s.forEach(function(e,t){return r[t]=e});var n={};o.forEach(function(e,t){return n[t]=e}),t.$http.post(t.api.updateTAnswerSecondByPrimaryKey,{source:r,target:n},{headers:{"Content-Type":"application/json"}},function(e){0==e.code?1==e.content?t.$message({type:"success",message:"修改成功，页面即将跳转至列表页",duration:500,onClose:function(){t.$router.push({path:"/TAnswerSecondModuleList"})}}):t.$message({type:"warning",message:"修改失败",duration:2e3}):t.$message({type:"error",message:e.msg,duration:2e3})},function(e){})},routerToList:function(){window.open("#/TAnswerSecondModuleList","_self")}}},a={render:function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"app-form mt20 ml40"},[s("h5",{staticClass:"form-tit"},[e._v("编辑")]),e._v(" "),s("section",[s("el-form",{ref:"postForm",attrs:{model:e.postForm,rules:e.rules,"label-width":"180px",size:"mini","inline-message":!0}},[s("div",{staticClass:"mt30 ml15"},[s("el-form-item",{attrs:{label:"id："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.id,callback:function(t){e.$set(e.postForm,"id",t)},expression:"postForm.id"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"userName："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.userName,callback:function(t){e.$set(e.postForm,"userName",t)},expression:"postForm.userName"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"questionId："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.questionId,callback:function(t){e.$set(e.postForm,"questionId",t)},expression:"postForm.questionId"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"questionTitle："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.questionTitle,callback:function(t){e.$set(e.postForm,"questionTitle",t)},expression:"postForm.questionTitle"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"content："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.content,callback:function(t){e.$set(e.postForm,"content",t)},expression:"postForm.content"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"deleteFlag："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.deleteFlag,callback:function(t){e.$set(e.postForm,"deleteFlag",t)},expression:"postForm.deleteFlag"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"status："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.status,callback:function(t){e.$set(e.postForm,"status",t)},expression:"postForm.status"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"blackFlag："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.blackFlag,callback:function(t){e.$set(e.postForm,"blackFlag",t)},expression:"postForm.blackFlag"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"time："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.time,callback:function(t){e.$set(e.postForm,"time",t)},expression:"postForm.time"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"answerId："}},[s("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.answerId,callback:function(t){e.$set(e.postForm,"answerId",t)},expression:"postForm.answerId"}})],1)],1)])],1),e._v(" "),s("div",{staticClass:"mt40 ml40"},[s("el-button",{attrs:{type:"primary"},on:{click:function(t){return e.submitEditForm("postForm")}}},[e._v("确定更新")]),e._v(" "),s("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToList()}}},[e._v("返回列表")])],1)])},staticRenderFns:[]};var r=s("VU/8")(o,a,!1,function(e){s("sUoR")},null,null);t.default=r.exports},sUoR:function(e,t){}});
//# sourceMappingURL=19.55c772aaa1d205c214b4.js.map