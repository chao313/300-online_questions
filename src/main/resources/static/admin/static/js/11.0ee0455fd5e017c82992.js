webpackJsonp([11],{c2eY:function(e,t){},jFYt:function(e,t,s){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{id:"",questionId:"",questionName:"",reason:""}}},created:function(){var e=this.$route.query&&this.$route.query.id;this.queryByPrimaryKey(e)},watch:{},methods:{queryByPrimaryKey:function(e){var t=this;t.$http.get(t.api.queryTReportQuestionByPrimaryKey,{params:{id:e}},function(e){0==e.code?(t.postForm=e.content,t.$message({type:"success",message:"查询成功",duration:2e3})):t.$message({type:"error",message:e.msg,duration:2e3})},function(e){t.$message({type:"warning",message:"请求异常",duration:1e3})})},routerToList:function(){window.open("#/TReportQuestionModuleList","_self")}}},r={render:function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"app-form mt20 ml40"},[s("h5",{staticClass:"form-tit"},[e._v("查看")]),e._v(" "),s("section",[s("el-form",{ref:"postForm",attrs:{model:e.postForm,rules:e.rules,"label-width":"180px",size:"mini","inline-message":!0}},[s("div",{staticClass:"mt30 ml15"},[s("el-form-item",{attrs:{label:"id："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.id,callback:function(t){e.$set(e.postForm,"id",t)},expression:"postForm.id"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"questionId："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.questionId,callback:function(t){e.$set(e.postForm,"questionId",t)},expression:"postForm.questionId"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"questionName："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.questionName,callback:function(t){e.$set(e.postForm,"questionName",t)},expression:"postForm.questionName"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"reason："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.reason,callback:function(t){e.$set(e.postForm,"reason",t)},expression:"postForm.reason"}})],1)],1)])],1),e._v(" "),s("div",{staticClass:"mt40 ml40"},[s("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToList()}}},[e._v("返回列表")])],1)])},staticRenderFns:[]};var a=s("VU/8")(o,r,!1,function(e){s("c2eY")},null,null);t.default=a.exports}});
//# sourceMappingURL=11.0ee0455fd5e017c82992.js.map