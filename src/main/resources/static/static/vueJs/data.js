var queryBase = "http://127.0.0.1:8000/demomaster/TTitleController/queryBase";
var host = "http://127.0.0.1:8000/";

/** 设置后台项目名称 */
var BASE_URL = host+ '/demomaster';


function queryUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); // 匹配目标参数
    var result = window.location.search.substr(1).match(reg); // 对querystring匹配目标参数
    if (result != null) {
        return decodeURIComponent(result[2]);
    } else {
        return null;
    }
}

/** 后台的URL */

/** VFollowPersonUser */
/** 根据主键更新VFollowPersonUser */
var updateVFollowPersonUserByPrimaryKey = BASE_URL + '/VFollowPersonUserController/updateByPrimaryKey';
/** 单条插入VFollowPersonUser */
var insertVFollowPersonUser = BASE_URL + '/VFollowPersonUserController/insert';
/** 根据主键删除VFollowPersonUser */
var deleteVFollowPersonUserByPrimaryKey = BASE_URL + '/VFollowPersonUserController/deleteByPrimaryKey';
/** 分页查询VFollowPersonUser */
var queryBasePageHelperVFollowPersonUser = BASE_URL + '/VFollowPersonUserController/queryBasePageHelper';
/** 根据主键查询VFollowPersonUser */
var queryVFollowPersonUserByPrimaryKey = BASE_URL + '/VFollowPersonUserController/queryByPrimaryKey';
/** 多条件查询VFollowPersonUser */
var queryBaseVFollowPersonUser = BASE_URL + '/VFollowPersonUserController/queryBase';
/** 批量插入VFollowPersonUser */
var insertsVFollowPersonUser = BASE_URL + '/VFollowPersonUserController/inserts';
/** 多条件更新VFollowPersonUser */
var updateBaseVFollowPersonUser = BASE_URL + '/VFollowPersonUserController/updateBase';


var vue = new Vue({
    el: "#body",
    data: {
        alertError: "系统错误，请联系管理员！",
        alertSuccess: "操作成功",

        BASE_URL:BASE_URL,

        host:host,
        /** 存储VFollowPersonUser多个结果*/
        VFollowPersonUserResults:[{
           userNameFollow: null,
           userName: null,
           cteateTime: null,
           id: null,
           name: null,
           email: null,
           signature: null,
           logo: null,
           blackListUser: null,
           approveStatus: null,
           status: null,
           phone: null
        }]
        ,
        /** 存储VFollowPersonUser单个结果*/
        VFollowPersonUserResult:{
          userNameFollow: null,
          userName: null,
          cteateTime: null,
          id: null,
          name: null,
          email: null,
          signature: null,
          logo: null,
          blackListUser: null,
          approveStatus: null,
          status: null,
          phone: null
        }
        ,
        /** 存储VFollowPersonUser插入结果*/
        VFollowPersonUserInsertParam:{
          userNameFollow: null,
          userName: null,
          cteateTime: null,
          id: null,
          name: null,
          email: null,
          signature: null,
          logo: null,
          blackListUser: null,
          approveStatus: null,
          status: null,
          phone: null
        }
        ,
       /** 存储VFollowPersonUser主键更新*/
       VFollowPersonUserUpdateByPrimaryKeyParam:{
         source:{
            userNameFollow: null,
            userName: null,
            cteateTime: null,
            id: null,
            name: null,
            email: null,
            signature: null,
            logo: null,
            blackListUser: null,
            approveStatus: null,
            status: null,
            phone: null
         }
         ,
         target:{
         }
       }
       ,
       /** 存储VFollowPersonUser更新*/
       VFollowPersonUserUpdateBaseParam:{
         source:{
           userNameFollow: null,
           userName: null,
           cteateTime: null,
           id: null,
           name: null,
           email: null,
           signature: null,
           logo: null,
           blackListUser: null,
           approveStatus: null,
           status: null,
           phone: null
         }
         ,
         target:{
          userNameFollow: null,
          userName: null,
          cteateTime: null,
          id: null,
          name: null,
          email: null,
          signature: null,
          logo: null,
          blackListUser: null,
          approveStatus: null,
          status: null,
          phone: null
         }
       }
       ,
       /** 存储VFollowPersonUser多条件查询条件*/
       VFollowPersonUserQueryBaseParam:{
          userNameFollow: null,
          userName: null,
          cteateTime: null,
          id: null,
          name: null,
          email: null,
          signature: null,
          logo: null,
          blackListUser: null,
          approveStatus: null,
          status: null,
          phone: null
       }
       ,
       /** 存储VFollowPersonUser多条件查询条件(分页，去除分页的num和size)*/
       VFollowPersonUserQueryBasePageHelperParam:{
          userNameFollow: null,
          userName: null,
          cteateTime: null,
          id: null,
          name: null,
          email: null,
          signature: null,
          logo: null,
          blackListUser: null,
          approveStatus: null,
          status: null,
          phone: null
       }
       ,
       /** 存储VFollowPersonUser存储多条件查询结果(分页，去除分页的num和size)*/
       VFollowPersonUserQueryBasePageHelperResult:{
          pageNum: null,
          pageSize: null,
          size: null,
          orderBy: null,
          startRow: null,
          endRow: null,
          total: null,
          pages: null,
          list: [{
            userNameFollow: null,
            userName: null,
            cteateTime: null,
            id: null,
            name: null,
            email: null,
            signature: null,
            logo: null,
            blackListUser: null,
            approveStatus: null,
            status: null,
            phone: null
          }],
          firstPage: null,
          prePage: 0,
          nextPage: null,
          lastPage: null,
          isFirstPage: true,
          isLastPage: null,
          hasPreviousPage: null,
          hasNextPage: null,
          navigatePages: null,
          navigatepageNums: []
        }
    
    },
    created() {
     /** 初始化 */
    },
    methods: {
            /** 处理queryByPrimaryKey */

            /** 主键更新VFollowPersonUser */
            updateVFollowPersonUserByPrimaryKey() {
              let self = this;
              axios.post(updateVFollowPersonUserByPrimaryKey, self.VFollowPersonUserUpdateByPrimaryKeyParam)
              .then(function (response) {
                   let data = response.data;
                    console.log(data);
                    if (data.code == 0) {
                         if(data.content == true)
                         alert("delete 成功");
                    } else {
                         alert(data.msg);
                    }
              }).catch(
              function (response) {
                  //失败回调
                  alert(self.alertError);
              })},


            /** 插入VFollowPersonUser */
            insertVFollowPersonUser() {
              let self = this;
              axios.post(insertVFollowPersonUser, self.VFollowPersonUserInsertParam)
              .then(function (response) {
                   let data = response.data;
                    console.log(data);
                    if (data.code == 0) {
                         if(data.content == true)
                         alert("insert 成功");
                    } else {
                         alert(data.msg);
                    }
              }).catch(
              function (response) {
                  //失败回调
                  alert(self.alertError);
              })},


            /** 主键删除VFollowPersonUser */
            deleteVFollowPersonUserByPrimaryKey() {
              let self = this;
              axios.post(deleteVFollowPersonUserByPrimaryKey,  {
                  params: {
                  }
             }).then(function (response) {
                   let data = response.data;
                    console.log(data);
                    if (data.code == 0) {
                         if(data.content == true)
                         alert("delete 成功");
                    } else {
                         alert(data.msg);
                    }
              }).catch(
              function (response) {
                  //失败回调
                  alert(self.alertError);
              })},


            /** 分页查询VFollowPersonUser -- 存放的是默认的data */
            queryBasePageHelperVFollowPersonUser(pageNum,pageSize) {
              let self = this;
              axios.post(queryBasePageHelperVFollowPersonUser+"?pageNum="+pageNum+"&pageSize="+pageSize, self.VFollowPersonUserQueryBasePageHelperParam)
              .then(function (response) {
                   let data = response.data;
                    console.log(data);
                    if (data.code == 0) {
                        self.VFollowPersonUserQueryBasePageHelperResult = data.content;
                        console.log(self.VFollowPersonUserQueryBasePageHelperResult);
                    } else {
                        alert(data.msg);
                    }
              }).catch(
              function (response) {
                  //失败回调
                  alert(self.alertError);
              })
            },

           /** 分页查询VFollowPersonUser  --  存放的是指定的data.sub */
            queryBasePageHelperVFollowPersonUserSub(pageNum,pageSize,sub) {
              let self = this;
              axios.post(queryBasePageHelperVFollowPersonUser+"?pageNum="+pageNum+"&pageSize="+pageSize, self.VFollowPersonUserQueryBasePageHelperParam)
              .then(function (response) {
                   let data = response.data;
                    console.log(data);
                    if (data.code == 0) {
                        self.$set(self.VFollowPersonUserQueryBasePageHelperResult,sub,data.content);
                        console.log(self.VFollowPersonUserQueryBasePageHelperResult);
                    } else {
                        alert(data.msg);
                    }
              }).catch(
              function (response) {
                  //失败回调
                  alert(self.alertError);
              })
            },


            /** 主键查询VFollowPersonUser */
            queryVFollowPersonUserByPrimaryKey() {
              let self = this;
              axios.get(queryVFollowPersonUserByPrimaryKey, {
                  params: {
                  }
              }).then(function (response) {
                   let data = response.data;
                    console.log(data);
                    if (data.code == 0) {
                        self.VFollowPersonUserResult = data.content;
                        console.log(self.VFollowPersonUserResult);
                    } else {
                        alert(data.msg);
                    }
              }).catch(
                    function (response) {
                    //失败回调
                     alert(self.alertError);
              })
            },


            /** 多条件查询VFollowPersonUser */
            queryBaseVFollowPersonUser() {
              let self = this;
              axios.post(queryBaseVFollowPersonUser, self.VFollowPersonUserQueryBaseParam)
              .then(function (response) {
                   let data = response.data;
                    console.log(data);
                    if (data.code == 0) {
                        self.VFollowPersonUserResults = data.content;
                        console.log(self.VFollowPersonUserResults);
                    } else {
                        alert(data.msg);
                    }
              }).catch(
              function (response) {
                  //失败回调
                  alert(self.alertError);
              })
            },



            /** 多条件更新VFollowPersonUser */
            updateBaseVFollowPersonUser() {
              let self = this;
              axios.post(updateBaseVFollowPersonUser, self.VFollowPersonUserUpdateBaseParam)
              .then(function (response) {
                   let data = response.data;
                    console.log(data);
                    if (data.code == 0) {
                         if(data.content == true)
                         alert("delete 成功");
                    } else {
                         alert(data.msg);
                    }
              }).catch(
              function (response) {
                  //失败回调
                  alert(self.alertError);
              })
           },


    }
});