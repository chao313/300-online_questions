webpackJsonp([47],{IW5N:function(e,t,s){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{id:"",userName:"",questionId:"",questionTitle:"",content:"",deleteFlag:"",status:"",blackFlag:"",time:"",answerId:""}}},created:function(){var e=this.$route.query&&this.$route.query.id;this.queryByPrimaryKey(e)},watch:{},methods:{queryByPrimaryKey:function(e){var t=this;t.$http.get(t.api.queryTAnswerSecondByPrimaryKey,{params:{id:e}},function(e){0==e.code?(t.postForm=e.content,t.$message({type:"success",message:"查询成功",duration:2e3})):t.$message({type:"error",message:e.msg,duration:2e3})},function(e){t.$message({type:"warning",message:"请求异常",duration:1e3})})},routerToList:function(){window.open("#/TAnswerSecondModuleList","_self")}}},a={render:function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"app-form mt20 ml40"},[s("h5",{staticClass:"form-tit"},[e._v("查看")]),e._v(" "),s("section",[s("el-form",{ref:"postForm",attrs:{model:e.postForm,rules:e.rules,"label-width":"180px",size:"mini","inline-message":!0}},[s("div",{staticClass:"mt30 ml15"},[s("el-form-item",{attrs:{label:"id："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.id,callback:function(t){e.$set(e.postForm,"id",t)},expression:"postForm.id"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"userName："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.userName,callback:function(t){e.$set(e.postForm,"userName",t)},expression:"postForm.userName"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"questionId："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.questionId,callback:function(t){e.$set(e.postForm,"questionId",t)},expression:"postForm.questionId"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"questionTitle："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.questionTitle,callback:function(t){e.$set(e.postForm,"questionTitle",t)},expression:"postForm.questionTitle"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"content："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.content,callback:function(t){e.$set(e.postForm,"content",t)},expression:"postForm.content"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"deleteFlag："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.deleteFlag,callback:function(t){e.$set(e.postForm,"deleteFlag",t)},expression:"postForm.deleteFlag"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"status："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.status,callback:function(t){e.$set(e.postForm,"status",t)},expression:"postForm.status"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"blackFlag："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.blackFlag,callback:function(t){e.$set(e.postForm,"blackFlag",t)},expression:"postForm.blackFlag"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"time："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.time,callback:function(t){e.$set(e.postForm,"time",t)},expression:"postForm.time"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"answerId："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.answerId,callback:function(t){e.$set(e.postForm,"answerId",t)},expression:"postForm.answerId"}})],1)],1)])],1),e._v(" "),s("div",{staticClass:"mt40 ml40"},[s("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToList()}}},[e._v("返回列表")])],1)])},staticRenderFns:[]};var l=s("VU/8")(o,a,!1,function(e){s("o//o")},null,null);t.default=l.exports},"o//o":function(e,t){}});
//# sourceMappingURL=47.4e78a343997691644602.js.map