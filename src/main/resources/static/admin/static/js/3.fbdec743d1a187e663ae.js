webpackJsonp([3],{"8EBP":function(t,e,r){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var s={name:"moduleDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{postForm:{id:"",tag:""}}},created:function(){var t=this.$route.query&&this.$route.query.id;this.queryByPrimaryKey(t)},watch:{},methods:{queryByPrimaryKey:function(t){var e=this;e.$http.get(e.api.queryTTagByPrimaryKey,{params:{id:t}},function(t){0==t.code?(e.postForm=t.content,e.$message({type:"success",message:"查询成功",duration:2e3})):e.$message({type:"error",message:t.msg,duration:2e3})},function(t){e.$message({type:"warning",message:"请求异常",duration:1e3})})},submitEditForm:function(t){var e=this,r=new FormData,s=new FormData,a=this.$route.query&&this.$route.query.id;r.append("tag",e.postForm.tag),s.append("id",a);var o={};r.forEach(function(t,e){return o[e]=t});var n={};s.forEach(function(t,e){return n[e]=t}),e.$http.post(e.api.updateTTagByPrimaryKey,{source:o,target:n},{headers:{"Content-Type":"application/json"}},function(t){0==t.code?1==t.content?e.$message({type:"success",message:"修改成功，页面即将跳转至列表页",duration:500,onClose:function(){e.$router.push({path:"/TTagModuleList"})}}):e.$message({type:"warning",message:"修改失败",duration:2e3}):e.$message({type:"error",message:t.msg,duration:2e3})},function(t){})},routerToList:function(){window.open("#/TTagModuleList","_self")}}},a={render:function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"app-form mt20 ml40"},[r("h5",{staticClass:"form-tit"},[t._v("编辑")]),t._v(" "),r("section",[r("el-form",{ref:"postForm",attrs:{model:t.postForm,rules:t.rules,"label-width":"180px",size:"mini","inline-message":!0}},[r("div",{staticClass:"mt30 ml15"},[r("el-form-item",{attrs:{label:"id："}},[r("el-input",{attrs:{maxlength:"100",disabled:!0},model:{value:t.postForm.id,callback:function(e){t.$set(t.postForm,"id",e)},expression:"postForm.id"}})],1),t._v(" "),r("el-form-item",{attrs:{label:"类别："}},[r("el-input",{attrs:{maxlength:"100"},model:{value:t.postForm.tag,callback:function(e){t.$set(t.postForm,"tag",e)},expression:"postForm.tag"}})],1)],1)])],1),t._v(" "),r("div",{staticClass:"mt40 ml40"},[r("el-button",{attrs:{type:"primary"},on:{click:function(e){return t.submitEditForm("postForm")}}},[t._v("确定更新")]),t._v(" "),r("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(e){return t.routerToList()}}},[t._v("返回列表")])],1)])},staticRenderFns:[]};var o=r("VU/8")(s,a,!1,function(t){r("jAqq")},null,null);e.default=o.exports},jAqq:function(t,e){}});
//# sourceMappingURL=3.fbdec743d1a187e663ae.js.map