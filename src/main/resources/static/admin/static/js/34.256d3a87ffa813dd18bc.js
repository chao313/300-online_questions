webpackJsonp([34],{"/UPT":function(t,e){},F7GN:function(t,e,o){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var s={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{id:"",questionId:"",questionName:"",reason:""}}},created:function(){},watch:{},methods:{submitAddForm:function(t){var e=this,o=new FormData;o.append("id",e.postForm.id),o.append("questionId",e.postForm.questionId),o.append("questionName",e.postForm.questionName),o.append("reason",e.postForm.reason);var s={};o.forEach(function(t,e){return s[e]=t}),e.$http.post(e.api.insertTReportQuestion,s,{headers:{"Content-Type":"application/json"}},function(t){0==t.code?1==t.content?e.$message({type:"success",message:"添加成功，页面即将跳转至列表页",duration:500,onClose:function(){e.$router.push({path:"/TReportQuestionModuleList"})}}):e.$message({type:"warning",message:"添加失败",duration:2e3}):e.$message({type:"error",message:t.msg,duration:2e3})},function(t){})},routerToList:function(){window.open("#/TReportQuestionModuleList","_self")}}},n={render:function(){var t=this,e=t.$createElement,o=t._self._c||e;return o("div",{staticClass:"app-form mt20 ml40"},[o("h5",{staticClass:"form-tit"},[t._v("编辑")]),t._v(" "),o("section",[o("el-form",{ref:"postForm",attrs:{model:t.postForm,rules:t.rules,"label-width":"180px",size:"mini","inline-message":!0}},[o("div",{staticClass:"mt30 ml15"},[o("el-form-item",{attrs:{label:"id："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:t.postForm.id,callback:function(e){t.$set(t.postForm,"id",e)},expression:"postForm.id"}})],1),t._v(" "),o("el-form-item",{attrs:{label:"questionId："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:t.postForm.questionId,callback:function(e){t.$set(t.postForm,"questionId",e)},expression:"postForm.questionId"}})],1),t._v(" "),o("el-form-item",{attrs:{label:"questionName："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:t.postForm.questionName,callback:function(e){t.$set(t.postForm,"questionName",e)},expression:"postForm.questionName"}})],1),t._v(" "),o("el-form-item",{attrs:{label:"reason："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:t.postForm.reason,callback:function(e){t.$set(t.postForm,"reason",e)},expression:"postForm.reason"}})],1)],1)])],1),t._v(" "),o("div",{staticClass:"mt40 ml40"},[o("el-button",{attrs:{type:"primary"},on:{click:function(e){return t.submitAddForm("postForm")}}},[t._v("确定添加")]),t._v(" "),o("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(e){return t.routerToList()}}},[t._v("返回列表")])],1)])},staticRenderFns:[]};var r=o("VU/8")(s,n,!1,function(t){o("/UPT")},null,null);e.default=r.exports}});
//# sourceMappingURL=34.256d3a87ffa813dd18bc.js.map