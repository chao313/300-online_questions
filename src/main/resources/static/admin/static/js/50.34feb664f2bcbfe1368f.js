webpackJsonp([50],{YVW1:function(e,t){},fETu:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});a("0xDb");var s={data:function(){return{policyIdList:[],policyId:"",statuses:[{value:1,title:"生效"},{value:2,title:"失效"},{value:null,title:"全部"}],status:"",dataList:[],total:-1,currentPage:1,pageSize:10,start:"",end:"",plateNo:"",exitStation:"",exitStationList:[],resultDetail:{},viewDialogVisible:!1,startTime:"",endTime:"",timeRange:[],registId:"",jsonData:"",search:{userName:"",questionId:"",questionTitle:"",answerContent:"",deleteFlag:"",id:"",status:"",approveStatus:"",userDeleteFlag:"",blackListUser:"",logo:"",pvCount:"",userId:"",pageNum:1,pageSize:10},pageInfo:{endRow:10,firstPage:1,hasNextPage:!0,hasPreviousPage:!1,isFirstPage:!0,isLastPage:!1,lastPage:8,list:[],navigatePages:8,navigatepageNums:[1,2,3,4,5,6,7,8],nextPage:2,orderBy:"",pageNum:1,pageSize:10,pages:1810,prePage:0,size:10,startRow:1,total:0}}},mounted:function(){},created:function(){this.queryBase()},watch:{},methods:{queryBase:function(){var e=this,t=new FormData;null!=e.search.userName&&""!=e.search.userName&&t.append("userName",e.search.userName),null!=e.search.questionId&&""!=e.search.questionId&&t.append("questionId",e.search.questionId),null!=e.search.questionTitle&&""!=e.search.questionTitle&&t.append("questionTitle",e.search.questionTitle),null!=e.search.answerContent&&""!=e.search.answerContent&&t.append("answerContent",e.search.answerContent),null!=e.search.deleteFlag&&""!=e.search.deleteFlag&&t.append("deleteFlag",e.search.deleteFlag),null!=e.search.id&&""!=e.search.id&&t.append("id",e.search.id),null!=e.search.status&&""!=e.search.status&&t.append("status",e.search.status),null!=e.search.approveStatus&&""!=e.search.approveStatus&&t.append("approveStatus",e.search.approveStatus),null!=e.search.userDeleteFlag&&""!=e.search.userDeleteFlag&&t.append("userDeleteFlag",e.search.userDeleteFlag),null!=e.search.blackListUser&&""!=e.search.blackListUser&&t.append("blackListUser",e.search.blackListUser),null!=e.search.logo&&""!=e.search.logo&&t.append("logo",e.search.logo),null!=e.search.pvCount&&""!=e.search.pvCount&&t.append("pvCount",e.search.pvCount),null!=e.search.userId&&""!=e.search.userId&&t.append("userId",e.search.userId);var a={};t.forEach(function(e,t){return a[t]=e}),e.$http.post(e.api.queryBasePageHelperVAnswerUser+"?pageNum="+e.search.pageNum+"&pageSize="+e.search.pageSize,a,{},function(t){e.pageInfo=t.content,e.dataList=t.content.list},function(t){e.$message({type:"warning",message:"请求异常",duration:1e3})})},deleteByPrimaryKey:function(){var e=this;this.$confirm("是否删除该条数据？","提示",{confirmButtonText:"确定",cancelButtonText:"取消",center:!0}).then(function(){e.$http.get(e.api.deleteVAnswerUserByPrimaryKey,{params:{}},function(t){0==t.code?1==t.content?(e.$message({type:"success",message:"删除成功",duration:2e3}),e.queryBase()):e.$message({type:"warning",message:"删除失败",duration:2e3}):e.$message({type:"error",message:t.msg,duration:2e3})},function(t){console.log(t),e.$message({type:"error",message:"请求异常",duration:2e3})})})},routerToView:function(){window.open("#/VAnswerUserModuleView?","_self")},routerToEdit:function(){window.open("#/VAnswerUserModuleEdit?","_self")},routerToAdd:function(){window.open("#/VAnswerUserModuleAdd","_self")},searchEvent:function(){this.queryBase()},searchRest:function(){this.search.userName="",this.search.questionId="",this.search.questionTitle="",this.search.answerContent="",this.search.deleteFlag="",this.search.id="",this.search.status="",this.search.approveStatus="",this.search.userDeleteFlag="",this.search.blackListUser="",this.search.logo="",this.search.pvCount="",this.search.userId="",this.queryBase()},handleCurrentChange:function(e){this.search.pageNum=this.pageInfo.pageNum,this.search.pageSize=this.pageInfo.pageSize,this.searchEvent()}}},r={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"app-container"},[a("div",{staticClass:"mt20"},[a("el-form",{attrs:{inline:!0,size:"mini"}},[a("el-form-item",{attrs:{label:"userName"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.userName,callback:function(t){e.$set(e.search,"userName",t)},expression:"search.userName"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"questionId"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.questionId,callback:function(t){e.$set(e.search,"questionId",t)},expression:"search.questionId"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"questionTitle"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.questionTitle,callback:function(t){e.$set(e.search,"questionTitle",t)},expression:"search.questionTitle"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"answerContent"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.answerContent,callback:function(t){e.$set(e.search,"answerContent",t)},expression:"search.answerContent"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"deleteFlag"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.deleteFlag,callback:function(t){e.$set(e.search,"deleteFlag",t)},expression:"search.deleteFlag"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"id"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.id,callback:function(t){e.$set(e.search,"id",t)},expression:"search.id"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"status"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.status,callback:function(t){e.$set(e.search,"status",t)},expression:"search.status"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"approveStatus"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.approveStatus,callback:function(t){e.$set(e.search,"approveStatus",t)},expression:"search.approveStatus"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"userDeleteFlag"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.userDeleteFlag,callback:function(t){e.$set(e.search,"userDeleteFlag",t)},expression:"search.userDeleteFlag"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"blackListUser"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.blackListUser,callback:function(t){e.$set(e.search,"blackListUser",t)},expression:"search.blackListUser"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"logo"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.logo,callback:function(t){e.$set(e.search,"logo",t)},expression:"search.logo"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"pvCount"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.pvCount,callback:function(t){e.$set(e.search,"pvCount",t)},expression:"search.pvCount"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"userId"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:e.search.userId,callback:function(t){e.$set(e.search,"userId",t)},expression:"search.userId"}})],1),e._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.searchEvent()}}},[e._v("查询")])],1),e._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.searchRest()}}},[e._v("重置\n                ")])],1),e._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(t){return e.routerToAdd()}}},[e._v("添加\n                ")])],1)],1)],1),e._v(" "),a("div",{staticClass:"app-list"},[a("div",{staticClass:"app-tab"},[a("table",[e._m(0),e._v(" "),e._m(1),e._v(" "),a("tbody",e._l(e.dataList,function(t,s){return a("tr",[a("td",[e._v(e._s(s+1))]),e._v(" "),a("td",[e._v(e._s(t.userName))]),e._v(" "),a("td",[e._v(e._s(t.questionId))]),e._v(" "),a("td",[e._v(e._s(t.questionTitle))]),e._v(" "),a("td",[e._v(e._s(t.answerContent))]),e._v(" "),a("td",[e._v(e._s(t.deleteFlag))]),e._v(" "),a("td",[e._v(e._s(t.id))]),e._v(" "),a("td",[e._v(e._s(t.status))]),e._v(" "),a("td",[e._v(e._s(t.approveStatus))]),e._v(" "),a("td",[e._v(e._s(t.userDeleteFlag))]),e._v(" "),a("td",[e._v(e._s(t.blackListUser))]),e._v(" "),a("td",[e._v(e._s(t.logo))]),e._v(" "),a("td",[e._v(e._s(t.pvCount))]),e._v(" "),a("td",[e._v(e._s(t.userId))]),e._v(" "),a("td",[a("span",{on:{click:function(t){return e.routerToView()}}},[e._v("查看")]),e._v(" "),a("span",{on:{click:function(t){return e.routerToEdit()}}},[e._v("编辑")]),e._v(" "),a("span",{on:{click:function(t){return e.deleteByPrimaryKey()}}},[e._v("删除")])])])}),0)]),e._v(" "),a("p",{directives:[{name:"show",rawName:"v-show",value:0==e.total,expression:"total == 0"}],staticClass:"no-data-tip"},[e._v("没有找到相关数据！")]),e._v(" "),a("div",[a("pre",[e._v(e._s(e.jsonData))])])]),e._v(" "),a("div",{staticClass:"mt10"},[a("el-pagination",{directives:[{name:"show",rawName:"v-show",value:e.pageInfo.list.length>0,expression:"pageInfo.list.length > 0"}],attrs:{background:"","current-page":e.pageInfo.pageNum,"page-size":e.pageInfo.pageSize,layout:"total, prev, pager, next, jumper",total:e.pageInfo.total},on:{"current-change":e.handleCurrentChange,"update:currentPage":function(t){return e.$set(e.pageInfo,"pageNum",t)},"update:current-page":function(t){return e.$set(e.pageInfo,"pageNum",t)}}})],1)])])},staticRenderFns:[function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("thead",[a("tr",[a("th",[e._v("id")]),e._v(" "),a("th",[e._v("userName")]),e._v(" "),a("th",[e._v("questionId")]),e._v(" "),a("th",[e._v("questionTitle")]),e._v(" "),a("th",[e._v("answerContent")]),e._v(" "),a("th",[e._v("deleteFlag")]),e._v(" "),a("th",[e._v("id")]),e._v(" "),a("th",[e._v("status")]),e._v(" "),a("th",[e._v("approveStatus")]),e._v(" "),a("th",[e._v("userDeleteFlag")]),e._v(" "),a("th",[e._v("blackListUser")]),e._v(" "),a("th",[e._v("logo")]),e._v(" "),a("th",[e._v("pvCount")]),e._v(" "),a("th",[e._v("userId")]),e._v(" "),a("th",[e._v("操作")])])])},function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("tr",[a("th",[e._v("序号")]),e._v(" "),a("th",[e._v("回答用户的Name")]),e._v(" "),a("th",[e._v("问题的id")]),e._v(" "),a("th",[e._v("问题的title")]),e._v(" "),a("th",[e._v("问题的内容")]),e._v(" "),a("th",[e._v("是否删除")]),e._v(" "),a("th",[e._v("回答的uuid")]),e._v(" "),a("th",[e._v("0-未启用 1-启用")]),e._v(" "),a("th",[e._v("0: 待审批 1：通过 ：2 拒绝")]),e._v(" "),a("th",[e._v("删除标志: 0未删除，1已删除")]),e._v(" "),a("th",[e._v("是否是黑名单 1 -> 是 0 -> 不是")]),e._v(" "),a("th",[e._v("用户头像")]),e._v(" "),a("th",[e._v("用户主页的浏览量")]),e._v(" "),a("th",[e._v("用户登录ID")]),e._v(" "),a("th",[e._v("操作")])])}]};var n=a("VU/8")(s,r,!1,function(e){a("YVW1")},null,null);t.default=n.exports}});
//# sourceMappingURL=50.34feb664f2bcbfe1368f.js.map