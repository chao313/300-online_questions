/* 设置后台项目名称 */
const BASE_URL = '/demomaster';
export default {

    /** Session操作 */
    "login": BASE_URL + '/SessionController/login',
    "adminLogin": BASE_URL + '/SessionController/admin/login',
    /* 登出 */
    "loginOut": BASE_URL + '/SessionController/loginOut',
    "loginAdminOut": BASE_URL + '/SessionController/loginAdminOut',
    /* 获取用户的id */
    "getUserId": BASE_URL + '/SessionController/getUserId',
    /* 获取用户的Name */
    "getUserName": BASE_URL + '/SessionController/getUserName',
    /* 获取用户的Name */
    "getAdminUserName": BASE_URL + '/SessionController/getAdminUserName',


    /*后台的URL*/
    /** 资源管理 */

    "addResourceFile": BASE_URL + '/ResourceController/addFile',
    "existResourceFileByName": BASE_URL + '/ResourceController/existFileByName',
    "deleteResourceFileByName": BASE_URL + '/ResourceController/deleteFileByName',
    "getResourceFiles": BASE_URL + '/ResourceController/getFiles',
    "getResourceFileDetails": BASE_URL + '/ResourceController/getFileDetails',
    "getResourceFileDetailByFileName": BASE_URL + '/ResourceController/getFileDetailByFileName',
    "downloadByResourceFileName": BASE_URL + '/ResourceController/downloadByFileName',
    "preByResourceFileName": BASE_URL + '/ResourceController/preByFileName',


    /* TTag */
    /* 根据主键更新TTag */
    "updateTTagByPrimaryKey": BASE_URL + '/TTagController/updateByPrimaryKey',
    /* 单条插入TTag */
    "insertTTag": BASE_URL + '/TTagController/insert',
    /* 根据主键删除TTag */
    "deleteTTagByPrimaryKey": BASE_URL + '/TTagController/deleteByPrimaryKey',
    /* 分页查询TTag */
    "queryBasePageHelperTTag": BASE_URL + '/TTagController/queryBasePageHelper',
    /* 根据主键查询TTag */
    "queryTTagByPrimaryKey": BASE_URL + '/TTagController/queryByPrimaryKey',
    /* 多条件查询TTag */
    "queryBaseTTag": BASE_URL + '/TTagController/queryBase',
    /* 批量插入TTag */
    "insertsTTag": BASE_URL + '/TTagController/inserts',
    /* 多条件更新TTag */
    "updateBaseTTag": BASE_URL + '/TTagController/updateBase'
    ,

    /* VReportUserUser */
    /* 根据主键更新VReportUserUser */
    "updateVReportUserUserByPrimaryKey": BASE_URL + '/VReportUserUserController/updateByPrimaryKey',
    /* 单条插入VReportUserUser */
    "insertVReportUserUser": BASE_URL + '/VReportUserUserController/insert',
    /* 根据主键删除VReportUserUser */
    "deleteVReportUserUserByPrimaryKey": BASE_URL + '/VReportUserUserController/deleteByPrimaryKey',
    /* 分页查询VReportUserUser */
    "queryBasePageHelperVReportUserUser": BASE_URL + '/VReportUserUserController/queryBasePageHelper',
    /* 根据主键查询VReportUserUser */
    "queryVReportUserUserByPrimaryKey": BASE_URL + '/VReportUserUserController/queryByPrimaryKey',
    /* 多条件查询VReportUserUser */
    "queryBaseVReportUserUser": BASE_URL + '/VReportUserUserController/queryBase',
    /* 批量插入VReportUserUser */
    "insertsVReportUserUser": BASE_URL + '/VReportUserUserController/inserts',
    /* 多条件更新VReportUserUser */
    "updateBaseVReportUserUser": BASE_URL + '/VReportUserUserController/updateBase'
    ,

    /* VReportQuestionQuestition */
    /* 根据主键更新VReportQuestionQuestition */
    "updateVReportQuestionQuestitionByPrimaryKey": BASE_URL + '/VReportQuestionQuestitionController/updateByPrimaryKey',
    /* 单条插入VReportQuestionQuestition */
    "insertVReportQuestionQuestition": BASE_URL + '/VReportQuestionQuestitionController/insert',
    /* 根据主键删除VReportQuestionQuestition */
    "deleteVReportQuestionQuestitionByPrimaryKey": BASE_URL + '/VReportQuestionQuestitionController/deleteByPrimaryKey',
    /* 分页查询VReportQuestionQuestition */
    "queryBasePageHelperVReportQuestionQuestition": BASE_URL + '/VReportQuestionQuestitionController/queryBasePageHelper',
    /* 根据主键查询VReportQuestionQuestition */
    "queryVReportQuestionQuestitionByPrimaryKey": BASE_URL + '/VReportQuestionQuestitionController/queryByPrimaryKey',
    /* 多条件查询VReportQuestionQuestition */
    "queryBaseVReportQuestionQuestition": BASE_URL + '/VReportQuestionQuestitionController/queryBase',
    /* 批量插入VReportQuestionQuestition */
    "insertsVReportQuestionQuestition": BASE_URL + '/VReportQuestionQuestitionController/inserts',
    /* 多条件更新VReportQuestionQuestition */
    "updateBaseVReportQuestionQuestition": BASE_URL + '/VReportQuestionQuestitionController/updateBase'
    ,

    /* TAnswer */
    /* 根据主键更新TAnswer */
    "updateTAnswerByPrimaryKey": BASE_URL + '/TAnswerController/updateByPrimaryKey',
    /* 单条插入TAnswer */
    "insertTAnswer": BASE_URL + '/TAnswerController/insert',
    /* 根据主键删除TAnswer */
    "deleteTAnswerByPrimaryKey": BASE_URL + '/TAnswerController/deleteByPrimaryKey',
    /* 分页查询TAnswer */
    "queryBasePageHelperTAnswer": BASE_URL + '/TAnswerController/queryBasePageHelper',
    /* 根据主键查询TAnswer */
    "queryTAnswerByPrimaryKey": BASE_URL + '/TAnswerController/queryByPrimaryKey',
    /* 多条件查询TAnswer */
    "queryBaseTAnswer": BASE_URL + '/TAnswerController/queryBase',
    /* 批量插入TAnswer */
    "insertsTAnswer": BASE_URL + '/TAnswerController/inserts',
    /* 多条件更新TAnswer */
    "updateBaseTAnswer": BASE_URL + '/TAnswerController/updateBase'
    ,

    /* TReportUser */
    /* 根据主键更新TReportUser */
    "updateTReportUserByPrimaryKey": BASE_URL + '/TReportUserController/updateByPrimaryKey',
    /* 单条插入TReportUser */
    "insertTReportUser": BASE_URL + '/TReportUserController/insert',
    /* 根据主键删除TReportUser */
    "deleteTReportUserByPrimaryKey": BASE_URL + '/TReportUserController/deleteByPrimaryKey',
    /* 分页查询TReportUser */
    "queryBasePageHelperTReportUser": BASE_URL + '/TReportUserController/queryBasePageHelper',
    /* 根据主键查询TReportUser */
    "queryTReportUserByPrimaryKey": BASE_URL + '/TReportUserController/queryByPrimaryKey',
    /* 多条件查询TReportUser */
    "queryBaseTReportUser": BASE_URL + '/TReportUserController/queryBase',
    /* 批量插入TReportUser */
    "insertsTReportUser": BASE_URL + '/TReportUserController/inserts',
    /* 多条件更新TReportUser */
    "updateBaseTReportUser": BASE_URL + '/TReportUserController/updateBase'
    ,

    /* TQuestions */
    /* 根据主键更新TQuestions */
    "updateTQuestionsByPrimaryKey": BASE_URL + '/TQuestionsController/updateByPrimaryKey',
    /* 单条插入TQuestions */
    "insertTQuestions": BASE_URL + '/TQuestionsController/insert',
    /* 根据主键删除TQuestions */
    "deleteTQuestionsByPrimaryKey": BASE_URL + '/TQuestionsController/deleteByPrimaryKey',
    /* 分页查询TQuestions */
    "queryBasePageHelperTQuestions": BASE_URL + '/TQuestionsController/queryBasePageHelper',
    /* 根据主键查询TQuestions */
    "queryTQuestionsByPrimaryKey": BASE_URL + '/TQuestionsController/queryByPrimaryKey',
    /* 多条件查询TQuestions */
    "queryBaseTQuestions": BASE_URL + '/TQuestionsController/queryBase',
    /* 批量插入TQuestions */
    "insertsTQuestions": BASE_URL + '/TQuestionsController/inserts',
    /* 多条件更新TQuestions */
    "updateBaseTQuestions": BASE_URL + '/TQuestionsController/updateBase'
    ,

    /* VAnswerUser */
    /* 根据主键更新VAnswerUser */
    "updateVAnswerUserByPrimaryKey": BASE_URL + '/VAnswerUserController/updateByPrimaryKey',
    /* 单条插入VAnswerUser */
    "insertVAnswerUser": BASE_URL + '/VAnswerUserController/insert',
    /* 根据主键删除VAnswerUser */
    "deleteVAnswerUserByPrimaryKey": BASE_URL + '/VAnswerUserController/deleteByPrimaryKey',
    /* 分页查询VAnswerUser */
    "queryBasePageHelperVAnswerUser": BASE_URL + '/VAnswerUserController/queryBasePageHelper',
    /* 根据主键查询VAnswerUser */
    "queryVAnswerUserByPrimaryKey": BASE_URL + '/VAnswerUserController/queryByPrimaryKey',
    /* 多条件查询VAnswerUser */
    "queryBaseVAnswerUser": BASE_URL + '/VAnswerUserController/queryBase',
    /* 批量插入VAnswerUser */
    "insertsVAnswerUser": BASE_URL + '/VAnswerUserController/inserts',
    /* 多条件更新VAnswerUser */
    "updateBaseVAnswerUser": BASE_URL + '/VAnswerUserController/updateBase'
    ,

    /* VQuestionUser */
    /* 根据主键更新VQuestionUser */
    "updateVQuestionUserByPrimaryKey": BASE_URL + '/VQuestionUserController/updateByPrimaryKey',
    /* 单条插入VQuestionUser */
    "insertVQuestionUser": BASE_URL + '/VQuestionUserController/insert',
    /* 根据主键删除VQuestionUser */
    "deleteVQuestionUserByPrimaryKey": BASE_URL + '/VQuestionUserController/deleteByPrimaryKey',
    /* 分页查询VQuestionUser */
    "queryBasePageHelperVQuestionUser": BASE_URL + '/VQuestionUserController/queryBasePageHelper',
    /* 根据主键查询VQuestionUser */
    "queryVQuestionUserByPrimaryKey": BASE_URL + '/VQuestionUserController/queryByPrimaryKey',
    /* 多条件查询VQuestionUser */
    "queryBaseVQuestionUser": BASE_URL + '/VQuestionUserController/queryBase',
    /* 批量插入VQuestionUser */
    "insertsVQuestionUser": BASE_URL + '/VQuestionUserController/inserts',
    /* 多条件更新VQuestionUser */
    "updateBaseVQuestionUser": BASE_URL + '/VQuestionUserController/updateBase'
    ,

    /* VReportAnswerAnswer */
    /* 根据主键更新VReportAnswerAnswer */
    "updateVReportAnswerAnswerByPrimaryKey": BASE_URL + '/VReportAnswerAnswerController/updateByPrimaryKey',
    /* 单条插入VReportAnswerAnswer */
    "insertVReportAnswerAnswer": BASE_URL + '/VReportAnswerAnswerController/insert',
    /* 根据主键删除VReportAnswerAnswer */
    "deleteVReportAnswerAnswerByPrimaryKey": BASE_URL + '/VReportAnswerAnswerController/deleteByPrimaryKey',
    /* 分页查询VReportAnswerAnswer */
    "queryBasePageHelperVReportAnswerAnswer": BASE_URL + '/VReportAnswerAnswerController/queryBasePageHelper',
    /* 根据主键查询VReportAnswerAnswer */
    "queryVReportAnswerAnswerByPrimaryKey": BASE_URL + '/VReportAnswerAnswerController/queryByPrimaryKey',
    /* 多条件查询VReportAnswerAnswer */
    "queryBaseVReportAnswerAnswer": BASE_URL + '/VReportAnswerAnswerController/queryBase',
    /* 批量插入VReportAnswerAnswer */
    "insertsVReportAnswerAnswer": BASE_URL + '/VReportAnswerAnswerController/inserts',
    /* 多条件更新VReportAnswerAnswer */
    "updateBaseVReportAnswerAnswer": BASE_URL + '/VReportAnswerAnswerController/updateBase'
    ,

    /* TQuestionTag */
    /* 根据主键更新TQuestionTag */
    "updateTQuestionTagByPrimaryKey": BASE_URL + '/TQuestionTagController/updateByPrimaryKey',
    /* 单条插入TQuestionTag */
    "insertTQuestionTag": BASE_URL + '/TQuestionTagController/insert',
    /* 根据主键删除TQuestionTag */
    "deleteTQuestionTagByPrimaryKey": BASE_URL + '/TQuestionTagController/deleteByPrimaryKey',
    /* 分页查询TQuestionTag */
    "queryBasePageHelperTQuestionTag": BASE_URL + '/TQuestionTagController/queryBasePageHelper',
    /* 根据主键查询TQuestionTag */
    "queryTQuestionTagByPrimaryKey": BASE_URL + '/TQuestionTagController/queryByPrimaryKey',
    /* 多条件查询TQuestionTag */
    "queryBaseTQuestionTag": BASE_URL + '/TQuestionTagController/queryBase',
    /* 批量插入TQuestionTag */
    "insertsTQuestionTag": BASE_URL + '/TQuestionTagController/inserts',
    /* 多条件更新TQuestionTag */
    "updateBaseTQuestionTag": BASE_URL + '/TQuestionTagController/updateBase'
    ,

    /* TAnswerSecond */
    /* 根据主键更新TAnswerSecond */
    "updateTAnswerSecondByPrimaryKey": BASE_URL + '/TAnswerSecondController/updateByPrimaryKey',
    /* 单条插入TAnswerSecond */
    "insertTAnswerSecond": BASE_URL + '/TAnswerSecondController/insert',
    /* 根据主键删除TAnswerSecond */
    "deleteTAnswerSecondByPrimaryKey": BASE_URL + '/TAnswerSecondController/deleteByPrimaryKey',
    /* 分页查询TAnswerSecond */
    "queryBasePageHelperTAnswerSecond": BASE_URL + '/TAnswerSecondController/queryBasePageHelper',
    /* 根据主键查询TAnswerSecond */
    "queryTAnswerSecondByPrimaryKey": BASE_URL + '/TAnswerSecondController/queryByPrimaryKey',
    /* 多条件查询TAnswerSecond */
    "queryBaseTAnswerSecond": BASE_URL + '/TAnswerSecondController/queryBase',
    /* 批量插入TAnswerSecond */
    "insertsTAnswerSecond": BASE_URL + '/TAnswerSecondController/inserts',
    /* 多条件更新TAnswerSecond */
    "updateBaseTAnswerSecond": BASE_URL + '/TAnswerSecondController/updateBase'
    ,

    /* TFollowQuestion */
    /* 根据主键更新TFollowQuestion */
    "updateTFollowQuestionByPrimaryKey": BASE_URL + '/TFollowQuestionController/updateByPrimaryKey',
    /* 单条插入TFollowQuestion */
    "insertTFollowQuestion": BASE_URL + '/TFollowQuestionController/insert',
    /* 根据主键删除TFollowQuestion */
    "deleteTFollowQuestionByPrimaryKey": BASE_URL + '/TFollowQuestionController/deleteByPrimaryKey',
    /* 分页查询TFollowQuestion */
    "queryBasePageHelperTFollowQuestion": BASE_URL + '/TFollowQuestionController/queryBasePageHelper',
    /* 根据主键查询TFollowQuestion */
    "queryTFollowQuestionByPrimaryKey": BASE_URL + '/TFollowQuestionController/queryByPrimaryKey',
    /* 多条件查询TFollowQuestion */
    "queryBaseTFollowQuestion": BASE_URL + '/TFollowQuestionController/queryBase',
    /* 批量插入TFollowQuestion */
    "insertsTFollowQuestion": BASE_URL + '/TFollowQuestionController/inserts',
    /* 多条件更新TFollowQuestion */
    "updateBaseTFollowQuestion": BASE_URL + '/TFollowQuestionController/updateBase'
    ,

    /* TReportAnswer */
    /* 根据主键更新TReportAnswer */
    "updateTReportAnswerByPrimaryKey": BASE_URL + '/TReportAnswerController/updateByPrimaryKey',
    /* 单条插入TReportAnswer */
    "insertTReportAnswer": BASE_URL + '/TReportAnswerController/insert',
    /* 根据主键删除TReportAnswer */
    "deleteTReportAnswerByPrimaryKey": BASE_URL + '/TReportAnswerController/deleteByPrimaryKey',
    /* 分页查询TReportAnswer */
    "queryBasePageHelperTReportAnswer": BASE_URL + '/TReportAnswerController/queryBasePageHelper',
    /* 根据主键查询TReportAnswer */
    "queryTReportAnswerByPrimaryKey": BASE_URL + '/TReportAnswerController/queryByPrimaryKey',
    /* 多条件查询TReportAnswer */
    "queryBaseTReportAnswer": BASE_URL + '/TReportAnswerController/queryBase',
    /* 批量插入TReportAnswer */
    "insertsTReportAnswer": BASE_URL + '/TReportAnswerController/inserts',
    /* 多条件更新TReportAnswer */
    "updateBaseTReportAnswer": BASE_URL + '/TReportAnswerController/updateBase'
    ,

    /* TUser */
    /* 根据主键更新TUser */
    "updateTUserByPrimaryKey": BASE_URL + '/TUserController/updateByPrimaryKey',
    /* 单条插入TUser */
    "insertTUser": BASE_URL + '/TUserController/insert',
    /* 根据主键删除TUser */
    "deleteTUserByPrimaryKey": BASE_URL + '/TUserController/deleteByPrimaryKey',
    /* 分页查询TUser */
    "queryBasePageHelperTUser": BASE_URL + '/TUserController/queryBasePageHelper',
    /* 根据主键查询TUser */
    "queryTUserByPrimaryKey": BASE_URL + '/TUserController/queryByPrimaryKey',
    /* 多条件查询TUser */
    "queryBaseTUser": BASE_URL + '/TUserController/queryBase',
    /* 批量插入TUser */
    "insertsTUser": BASE_URL + '/TUserController/inserts',
    /* 多条件更新TUser */
    "updateBaseTUser": BASE_URL + '/TUserController/updateBase'
    ,

    /* TSystemParam */
    /* 根据主键更新TSystemParam */
    "updateTSystemParamByPrimaryKey": BASE_URL + '/TSystemParamController/updateByPrimaryKey',
    /* 单条插入TSystemParam */
    "insertTSystemParam": BASE_URL + '/TSystemParamController/insert',
    /* 根据主键删除TSystemParam */
    "deleteTSystemParamByPrimaryKey": BASE_URL + '/TSystemParamController/deleteByPrimaryKey',
    /* 分页查询TSystemParam */
    "queryBasePageHelperTSystemParam": BASE_URL + '/TSystemParamController/queryBasePageHelper',
    /* 根据主键查询TSystemParam */
    "queryTSystemParamByPrimaryKey": BASE_URL + '/TSystemParamController/queryByPrimaryKey',
    /* 多条件查询TSystemParam */
    "queryBaseTSystemParam": BASE_URL + '/TSystemParamController/queryBase',
    /* 批量插入TSystemParam */
    "insertsTSystemParam": BASE_URL + '/TSystemParamController/inserts',
    /* 多条件更新TSystemParam */
    "updateBaseTSystemParam": BASE_URL + '/TSystemParamController/updateBase'
    ,

    /* TReportQuestion */
    /* 根据主键更新TReportQuestion */
    "updateTReportQuestionByPrimaryKey": BASE_URL + '/TReportQuestionController/updateByPrimaryKey',
    /* 单条插入TReportQuestion */
    "insertTReportQuestion": BASE_URL + '/TReportQuestionController/insert',
    /* 根据主键删除TReportQuestion */
    "deleteTReportQuestionByPrimaryKey": BASE_URL + '/TReportQuestionController/deleteByPrimaryKey',
    /* 分页查询TReportQuestion */
    "queryBasePageHelperTReportQuestion": BASE_URL + '/TReportQuestionController/queryBasePageHelper',
    /* 根据主键查询TReportQuestion */
    "queryTReportQuestionByPrimaryKey": BASE_URL + '/TReportQuestionController/queryByPrimaryKey',
    /* 多条件查询TReportQuestion */
    "queryBaseTReportQuestion": BASE_URL + '/TReportQuestionController/queryBase',
    /* 批量插入TReportQuestion */
    "insertsTReportQuestion": BASE_URL + '/TReportQuestionController/inserts',
    /* 多条件更新TReportQuestion */
    "updateBaseTReportQuestion": BASE_URL + '/TReportQuestionController/updateBase'
    ,

    /* TAdminUser */
    /* 根据主键更新TAdminUser */
    "updateTAdminUserByPrimaryKey": BASE_URL + '/TAdminUserController/updateByPrimaryKey',
    /* 单条插入TAdminUser */
    "insertTAdminUser": BASE_URL + '/TAdminUserController/insert',
    /* 根据主键删除TAdminUser */
    "deleteTAdminUserByPrimaryKey": BASE_URL + '/TAdminUserController/deleteByPrimaryKey',
    /* 分页查询TAdminUser */
    "queryBasePageHelperTAdminUser": BASE_URL + '/TAdminUserController/queryBasePageHelper',
    /* 根据主键查询TAdminUser */
    "queryTAdminUserByPrimaryKey": BASE_URL + '/TAdminUserController/queryByPrimaryKey',
    /* 多条件查询TAdminUser */
    "queryBaseTAdminUser": BASE_URL + '/TAdminUserController/queryBase',
    /* 批量插入TAdminUser */
    "insertsTAdminUser": BASE_URL + '/TAdminUserController/inserts',
    /* 多条件更新TAdminUser */
    "updateBaseTAdminUser": BASE_URL + '/TAdminUserController/updateBase'
    ,

    /* TFollowPerson */
    /* 根据主键更新TFollowPerson */
    "updateTFollowPersonByPrimaryKey": BASE_URL + '/TFollowPersonController/updateByPrimaryKey',
    /* 单条插入TFollowPerson */
    "insertTFollowPerson": BASE_URL + '/TFollowPersonController/insert',
    /* 根据主键删除TFollowPerson */
    "deleteTFollowPersonByPrimaryKey": BASE_URL + '/TFollowPersonController/deleteByPrimaryKey',
    /* 分页查询TFollowPerson */
    "queryBasePageHelperTFollowPerson": BASE_URL + '/TFollowPersonController/queryBasePageHelper',
    /* 根据主键查询TFollowPerson */
    "queryTFollowPersonByPrimaryKey": BASE_URL + '/TFollowPersonController/queryByPrimaryKey',
    /* 多条件查询TFollowPerson */
    "queryBaseTFollowPerson": BASE_URL + '/TFollowPersonController/queryBase',
    /* 批量插入TFollowPerson */
    "insertsTFollowPerson": BASE_URL + '/TFollowPersonController/inserts',
    /* 多条件更新TFollowPerson */
    "updateBaseTFollowPerson": BASE_URL + '/TFollowPersonController/updateBase'


}
