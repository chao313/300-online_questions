webpackJsonp([4],{ACp3:function(e,t){},AnaS:function(e,t,s){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{id:"",userName:"",reason:"",name:"",createTime:"",updateTime:"",deleteFlag:"",approveStatus:"",blackListUser:"",logo:"",pvCount:"",status:"",email:"",phone:""}}},created:function(){this.queryByPrimaryKey()},watch:{},methods:{queryByPrimaryKey:function(){var e=this;e.$http.get(e.api.queryVReportUserUserByPrimaryKey,{params:{}},function(t){0==t.code?(e.postForm=t.content,e.$message({type:"success",message:"查询成功",duration:2e3})):e.$message({type:"error",message:t.msg,duration:2e3})},function(t){e.$message({type:"warning",message:"请求异常",duration:1e3})})},routerToList:function(){window.open("#/VReportUserUserModuleList","_self")}}},a={render:function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"app-form mt20 ml40"},[s("h5",{staticClass:"form-tit"},[e._v("查看")]),e._v(" "),s("section",[s("el-form",{ref:"postForm",attrs:{model:e.postForm,rules:e.rules,"label-width":"180px",size:"mini","inline-message":!0}},[s("div",{staticClass:"mt30 ml15"},[s("el-form-item",{attrs:{label:"id："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.id,callback:function(t){e.$set(e.postForm,"id",t)},expression:"postForm.id"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"userName："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.userName,callback:function(t){e.$set(e.postForm,"userName",t)},expression:"postForm.userName"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"reason："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.reason,callback:function(t){e.$set(e.postForm,"reason",t)},expression:"postForm.reason"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"name："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.name,callback:function(t){e.$set(e.postForm,"name",t)},expression:"postForm.name"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"createTime："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.createTime,callback:function(t){e.$set(e.postForm,"createTime",t)},expression:"postForm.createTime"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"updateTime："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.updateTime,callback:function(t){e.$set(e.postForm,"updateTime",t)},expression:"postForm.updateTime"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"deleteFlag："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.deleteFlag,callback:function(t){e.$set(e.postForm,"deleteFlag",t)},expression:"postForm.deleteFlag"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"approveStatus："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.approveStatus,callback:function(t){e.$set(e.postForm,"approveStatus",t)},expression:"postForm.approveStatus"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"blackListUser："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.blackListUser,callback:function(t){e.$set(e.postForm,"blackListUser",t)},expression:"postForm.blackListUser"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"logo："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.logo,callback:function(t){e.$set(e.postForm,"logo",t)},expression:"postForm.logo"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"pvCount："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.pvCount,callback:function(t){e.$set(e.postForm,"pvCount",t)},expression:"postForm.pvCount"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"status："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.status,callback:function(t){e.$set(e.postForm,"status",t)},expression:"postForm.status"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"email："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.email,callback:function(t){e.$set(e.postForm,"email",t)},expression:"postForm.email"}})],1),e._v(" "),s("el-form-item",{attrs:{label:"phone："}},[s("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:e.postForm.phone,callback:function(t){e.$set(e.postForm,"phone",t)},expression:"postForm.phone"}})],1)],1)])],1),e._v(" "),s("div",{staticClass:"mt40 ml40"},[s("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToList()}}},[e._v("返回列表")])],1)])},staticRenderFns:[]};var l=s("VU/8")(o,a,!1,function(e){s("ACp3")},null,null);t.default=l.exports}});
//# sourceMappingURL=4.9b310a3a87dae11b10ca.js.map