webpackJsonp([26],{XVZJ:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});a("0xDb");var n={data:function(){return{policyIdList:[],policyId:"",statuses:[{value:1,title:"生效"},{value:2,title:"失效"},{value:null,title:"首页"}],status:"",dataList:[],total:-1,currentPage:1,pageSize:10,start:"",end:"",plateNo:"",exitStation:"",exitStationList:[],resultDetail:{},viewDialogVisible:!1,startTime:"",endTime:"",timeRange:[],registId:"",jsonData:"",search:{id:"",total:"",runTime:""}}},mounted:function(){},created:function(){this.queryBase()},watch:{},methods:{queryBase:function(){var t=this,e=new FormData;null!=t.search.id&&""!=t.search.id&&e.append("id",t.search.id),null!=t.search.total&&""!=t.search.total&&e.append("total",t.search.total),null!=t.search.runTime&&""!=t.search.runTime&&e.append("runTime",t.search.runTime);var a={};e.forEach(function(t,e){return a[e]=t}),t.$http.post(t.api.queryBaseTStatistics,a,{},function(e){t.dataList=e.content},function(e){t.$message({type:"warning",message:"请求异常",duration:1e3})})},deleteByPrimaryKey:function(t){var e=this;this.$confirm("是否删除该条数据？","提示",{confirmButtonText:"确定",cancelButtonText:"取消",center:!0}).then(function(){e.$http.get(e.api.deleteTStatisticsByPrimaryKey,{params:{id:t}},function(t){0==t.code?1==t.content?(e.$message({type:"success",message:"删除成功",duration:2e3}),e.queryBase()):e.$message({type:"warning",message:"删除失败",duration:2e3}):e.$message({type:"error",message:t.msg,duration:2e3})},function(t){console.log(t),e.$message({type:"error",message:"请求异常",duration:2e3})})})},routerToView:function(t){var e="";e=e+"id="+t,window.open("#/TStatisticsModuleView?"+e,"_self")},routerToEdit:function(t){var e="";e=e+"id="+t,window.open("#/TStatisticsModuleEdit?"+e,"_self")},routerToAdd:function(){window.open("#/TStatisticsModuleAdd","_self")},searchEvent:function(){this.queryBase()},searchRest:function(){this.search.id="",this.search.total="",this.search.runTime="",this.queryBase()}}},r={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"app-container"},[a("div",{staticClass:"mt20"},[a("el-form",{attrs:{inline:!0,size:"mini"}},[a("el-form-item",{attrs:{label:"id"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:t.search.id,callback:function(e){t.$set(t.search,"id",e)},expression:"search.id"}})],1),t._v(" "),a("el-form-item",{attrs:{label:"total"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:t.search.total,callback:function(e){t.$set(t.search,"total",e)},expression:"search.total"}})],1),t._v(" "),a("el-form-item",{attrs:{label:"runTime"}},[a("el-input",{attrs:{placeholder:"请输入"},model:{value:t.search.runTime,callback:function(e){t.$set(t.search,"runTime",e)},expression:"search.runTime"}})],1),t._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(e){return t.searchEvent()}}},[t._v("查询")])],1),t._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(e){return t.searchRest()}}},[t._v("重置\n                ")])],1),t._v(" "),a("el-form-item",[a("el-button",{staticClass:"el-button-search",attrs:{type:"primary"},on:{click:function(e){return t.routerToAdd()}}},[t._v("添加\n                ")])],1)],1)],1),t._v(" "),a("div",{staticClass:"app-list"},[a("div",{staticClass:"app-tab"},[a("table",[t._m(0),t._v(" "),t._m(1),t._v(" "),a("tbody",t._l(t.dataList,function(e,n){return a("tr",[a("td",[t._v(t._s(n+1))]),t._v(" "),a("td",[t._v(t._s(e.id))]),t._v(" "),a("td",[t._v(t._s(e.total))]),t._v(" "),a("td",[t._v(t._s(e.runTime))]),t._v(" "),a("td",[a("span",{on:{click:function(a){return t.routerToView(e.id)}}},[t._v("查看")]),t._v(" "),a("span",{on:{click:function(a){return t.routerToEdit(e.id)}}},[t._v("编辑")]),t._v(" "),a("span",{on:{click:function(a){return t.deleteByPrimaryKey(e.id)}}},[t._v("删除")])])])}),0)]),t._v(" "),a("p",{directives:[{name:"show",rawName:"v-show",value:0==t.total,expression:"total == 0"}],staticClass:"no-data-tip"},[t._v("没有找到相关数据！")]),t._v(" "),a("div",[a("pre",[t._v(t._s(t.jsonData))])])]),t._v(" "),a("div",{directives:[{name:"show",rawName:"v-show",value:t.total>0,expression:"total > 0"}],staticClass:"mt20"},[a("el-pagination",{attrs:{background:"","current-page":t.currentPage,"page-size":t.pageSize,layout:"total,prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange,"update:currentPage":function(e){t.currentPage=e},"update:current-page":function(e){t.currentPage=e}}})],1)])])},staticRenderFns:[function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("thead",[a("tr",[a("th",[t._v("id")]),t._v(" "),a("th",[t._v("id")]),t._v(" "),a("th",[t._v("total")]),t._v(" "),a("th",[t._v("runTime")]),t._v(" "),a("th",[t._v("操作")])])])},function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("tr",[a("th",[t._v("序号")]),t._v(" "),a("th"),t._v(" "),a("th",[t._v("日志总数")]),t._v(" "),a("th",[t._v("网站运行时间")]),t._v(" "),a("th",[t._v("操作")])])}]};var i=a("VU/8")(n,r,!1,function(t){a("YDgc")},null,null);e.default=i.exports},YDgc:function(t,e){}});