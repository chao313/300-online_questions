webpackJsonp([44],{"+Nnb":function(e,t){},HUAG:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});a("0xDb");var s={data:function(){return{policyIdList:[],policyId:"",statuses:[{value:1,title:"生效"},{value:2,title:"失效"},{value:null,title:"全部"}],status:"",dataList:[],total:-1,currentPage:1,pageSize:10,start:"",end:"",plateNo:"",exitStation:"",exitStationList:[],resultDetail:{},viewDialogVisible:!1,startTime:"",endTime:"",timeRange:[],registId:"",jsonData:"",search:{questionId:"",userName:"",cteateTime:"",pageNum:1,pageSize:10},pageInfo:{endRow:10,firstPage:1,hasNextPage:!0,hasPreviousPage:!1,isFirstPage:!0,isLastPage:!1,lastPage:8,list:[],navigatePages:8,navigatepageNums:[1,2,3,4,5,6,7,8],nextPage:2,orderBy:"",pageNum:1,pageSize:10,pages:1810,prePage:0,size:10,startRow:1,total:0}}},mounted:function(){},created:function(){this.queryBase()},watch:{},methods:{queryBase:function(){var e=this,t=new FormData;null!=e.search.questionId&&""!=e.search.questionId&&t.append("questionId",e.search.questionId),null!=e.search.userName&&""!=e.search.userName&&t.append("userName",e.search.userName),null!=e.search.cteateTime&&""!=e.search.cteateTime&&t.append("cteateTime",e.search.cteateTime);var a={};t.forEach(function(e,t){return a[t]=e}),e.$http.post(e.api.queryBasePageHelperTFollowQuestion+"?pageNum="+e.search.pageNum+"&pageSize="+e.search.pageSize,a,{},function(t){e.pageInfo=t.content,e.dataList=t.content.list},function(t){e.$message({type:"warning",message:"请求异常",duration:1e3})})},deleteByPrimaryKey:function(e,t){var a=this;this.$confirm("是否删除该条数据？","提示",{confirmButtonText:"确定",cancelButtonText:"取消",center:!0}).then(function(){a.$http.get(a.api.deleteTFollowQuestionByPrimaryKey,{params:{questionId:e,userName:t}},function(e){0==e.code?1==e.content?(a.$message({type:"success",message:"删除成功",duration:2e3}),a.queryBase()):a.$message({type:"warning",message:"删除失败",duration:2e3}):a.$message({type:"error",message:e.msg,duration:2e3})},function(e){console.log(e),a.$message({type:"error",message:"请求异常",duration:2e3})})})},routerToView:function(e,t){var a="";a=(a=a+"questionId="+e+"&")+"userName="+t,window.open("#/TFollowQuestionModuleView?"+a,"_self")},routerToEdit:function(e,t){var a="";a=(a=a+"questionId="+e+"&")+"userName="+t,window.open("#/TFollowQuestionModuleEdit?"+a,"_self")},routerToAdd:function(){window.open("#/TFollowQuestionModuleAdd","_self")},searchEvent:function(){this.queryBase()},searchRest:function(){this.search.questionId="",this.search.userName="",this.search.cteateTime="",this.queryBase()},handleCurrentChange:function(e){this.search.pageNum=this.pageInfo.pageNum,this.search.pageSize=this.pageInfo.pageSize,this.searchEvent()}}},n={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("div",{staticClass:"mt20"},[a("el-form",{attrs:{inline:!0,size:"mini"}},[a("el-form-item",{attrs:{label:"questionId"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.questionId,callback:function(t){e.$set(e.search,"questionId",t)},expression:"search.questionId"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"userName"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.userName,callback:function(t){e.$set(e.search,"userName",t)},expression:"search.userName"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"cteateTime"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.cteateTime,callback:function(t){e.$set(e.search,"cteateTime",t)},expression:"search.cteateTime"}})],1),e._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.searchEvent()}}},[e._v("查询")])],1),e._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.searchRest()}}},[e._v("重置\n                ")])],1),e._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToAdd()}}},[e._v("添加\n                ")])],1)],1)],1),e._v(" "),a("div",{staticClass:"app-list"},[a("div",{staticClass:"app-tab"},[a("table",[e._m(0),e._v(" "),e._m(1),e._v(" "),a("tbody",e._l(e.dataList,function(t,s){return a("tr",[a("td",[e._v(e._s(s+1))]),e._v(" "),a("td",[e._v(e._s(t.questionId))]),e._v(" "),a("td",[e._v(e._s(t.userName))]),e._v(" "),a("td",[e._v(e._s(t.cteateTime))]),e._v(" "),a("td",[a("span",{on:{click:function(a){return e.routerToView(t.questionId,t.userName)}}},[e._v("查看")]),e._v(" "),a("span",{on:{click:function(a){return e.routerToEdit(t.questionId,t.userName)}}},[e._v("编辑")]),e._v(" "),a("span",{on:{click:function(a){return e.deleteByPrimaryKey(t.questionId,t.userName)}}},[e._v("删除")])])])}),0)]),e._v(" "),a("p",{directives:[{name:"show",rawName:"v-show",value:0==e.total,expression:"total == 0"}],staticClass:"no-data-tip"},[e._v("没有找到相关数据！")]),e._v(" "),a("div",[a("pre",[e._v(e._s(e.jsonData))])])]),e._v(" "),a("div",{staticClass:"mt10"},[a("el-pagination",{directives:[{name:"show",rawName:"v-show",value:e.pageInfo.list.length>0,expression:"pageInfo.list.length > 0"}],attrs:{background:"","current-page":e.pageInfo.pageNum,"page-size":e.pageInfo.pageSize,layout:"total, prev, pager, next, jumper",total:e.pageInfo.total},on:{"current-change":e.handleCurrentChange,"update:currentPage":function(t){return e.$set(e.pageInfo,"pageNum",t)},"update:current-page":function(t){return e.$set(e.pageInfo,"pageNum",t)}}})],1)])])},staticRenderFns:[function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("thead",[a("tr",[a("th",[e._v("id")]),e._v(" "),a("th",[e._v("questionId")]),e._v(" "),a("th",[e._v("userName")]),e._v(" "),a("th",[e._v("cteateTime")]),e._v(" "),a("th",[e._v("操作")])])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("tr",[a("th",[e._v("序号")]),e._v(" "),a("th",[e._v("问题的id")]),e._v(" "),a("th",[e._v("关注的人")]),e._v(" "),a("th"),e._v(" "),a("th",[e._v("操作")])])}]};var r=a("VU/8")(s,n,!1,function(e){a("+Nnb")},null,null);t.default=r.exports}});
//# sourceMappingURL=44.728d50c631edd6041f04.js.map