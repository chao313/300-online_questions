webpackJsonp([55],{VLZg:function(e,t,s){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{id:"",userName:"",questionId:"",questionTitle:"",content:"",deleteFlag:"",status:"",blackFlag:"",time:"",answerId:""}}},computed:{base64Decode:function(){return function(e){return decodeURIComponent(atob(e))}},path:function(){return function(e){return null==e?"local/avatar-mid-img.png":BASE_URL+"/"+e}}},created:function(){var e=this.$route.query&&this.$route.query.id;this.queryByPrimaryKey(e)},watch:{},methods:{queryByPrimaryKey:function(e){var t=this;t.$http.get(t.api.queryTAnswerByPrimaryKey,{params:{id:e}},function(e){0==e.code?(t.postForm=e.content,t.$message({type:"success",message:"查询成功",duration:2e3})):t.$message({type:"error",message:e.msg,duration:2e3})},function(e){t.$message({type:"warning",message:"请求异常",duration:1e3})})},routerToList:function(){window.open("#/TAnswerModuleList","_self")}}},a={render:function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"app-form mt20 ml40"},[s("h5",{staticClass:"form-tit"},[e._v("查看")]),e._v(" "),s("section",[s("el-form",{ref:"postForm",attrs:{model:e.postForm,rules:e.rules,"label-width":"180px",size:"mini","inline-message":!0}},[s("div",{staticClass:"mt30 ml15"},[s("el-form-item",{attrs:{label:"回复人："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.userName,callback:function(t){e.$set(e.postForm,"userName",t)},expression:"postForm.userName"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"回复问题标题："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.questionTitle,callback:function(t){e.$set(e.postForm,"questionTitle",t)},expression:"postForm.questionTitle"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"回复内容："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},domProps:{innerHTML:e._s(e.base64Decode(e.postForm.content))}})],1),e._v(" "),s("el-form-item",{attrs:{label:"是否黑名单："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.blackFlag,callback:function(t){e.$set(e.postForm,"blackFlag",t)},expression:"postForm.blackFlag"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"回复时间："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.time,callback:function(t){e.$set(e.postForm,"time",t)},expression:"postForm.time"}})],1)],1)])],1),e._v(" "),s("div",{staticClass:"mt40 ml40"},[s("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToList()}}},[e._v("返回列表")])],1)])},staticRenderFns:[]};var r=s("VU/8")(o,a,!1,function(e){s("h8bO")},null,null);t.default=r.exports},h8bO:function(e,t){}});
//# sourceMappingURL=55.2fe5b180a798010a35e5.js.map