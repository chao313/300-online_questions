webpackJsonp([77],{"0Fp5":function(e,t,o){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var s={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{userNameFollow:"",userName:"",cteateTime:""}}},created:function(){},watch:{},methods:{submitAddForm:function(e){var t=this,o=new FormData;o.append("userNameFollow",t.postForm.userNameFollow),o.append("userName",t.postForm.userName),o.append("cteateTime",t.postForm.cteateTime);var s={};o.forEach(function(e,t){return s[t]=e}),t.$http.post(t.api.insertTFollowPerson,s,{headers:{"Content-Type":"application/json"}},function(e){0==e.code?1==e.content?t.$message({type:"success",message:"添加成功，页面即将跳转至列表页",duration:500,onClose:function(){t.$router.push({path:"/TFollowPersonModuleList"})}}):t.$message({type:"warning",message:"添加失败",duration:2e3}):t.$message({type:"error",message:e.msg,duration:2e3})},function(e){})},routerToList:function(){window.open("#/TFollowPersonModuleList","_self")}}},r={render:function(){var e=this,t=e.$createElement,o=e._self._c||t;return o("div",{staticClass:"app-form mt20 ml40"},[o("h5",{staticClass:"form-tit"},[e._v("编辑")]),e._v(" "),o("section",[o("el-form",{ref:"postForm",attrs:{model:e.postForm,rules:e.rules,"label-width":"180px",size:"mini","inline-message":!0}},[o("div",{staticClass:"mt30 ml15"},[o("el-form-item",{attrs:{label:"userNameFollow："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.userNameFollow,callback:function(t){e.$set(e.postForm,"userNameFollow",t)},expression:"postForm.userNameFollow"}})],1),e._v(" "),o("el-form-item",{attrs:{label:"userName："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.userName,callback:function(t){e.$set(e.postForm,"userName",t)},expression:"postForm.userName"}})],1),e._v(" "),o("el-form-item",{attrs:{label:"cteateTime："}},[o("el-input",{attrs:{maxlength:"100"},model:{value:e.postForm.cteateTime,callback:function(t){e.$set(e.postForm,"cteateTime",t)},expression:"postForm.cteateTime"}})],1)],1)])],1),e._v(" "),o("div",{staticClass:"mt40 ml40"},[o("el-button",{attrs:{type:"primary"},on:{click:function(t){return e.submitAddForm("postForm")}}},[e._v("确定添加")]),e._v(" "),o("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToList()}}},[e._v("返回列表")])],1)])},staticRenderFns:[]};var a=o("VU/8")(s,r,!1,function(e){o("BMrk")},null,null);t.default=a.exports},BMrk:function(e,t){}});
//# sourceMappingURL=77.c7953498bb72ed4748e1.js.map