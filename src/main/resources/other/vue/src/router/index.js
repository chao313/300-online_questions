import Vue from 'vue'
import Router from 'vue-router'


/**
 * 管理边栏的地方
 */
Vue.use(Router)

/* Layout */
import Layout from '@/views/layout/Layout'
//登陆界面
const Login = r => require.ensure([], () => r(require('@/views/login/index')), 'login')
const AdminLogin = r => require.ensure([], () => r(require('@/views/login/AdminIndex')), 'AdminLogin')
const ForgetPassword = r => require.ensure([], () => r(require('@/views/login/ForgetPassword')), 'ForgetPassword')


const ResourceManagerList = r => require.ensure([], () => r(require('@/views/ResourceManager/List')), 'ResourceManagerList')
const ResourceManagerAdd = r => require.ensure([], () => r(require('@/views/ResourceManager/Add')), 'ResourceManagerAdd')
const ResourceManagerView = r => require.ensure([], () => r(require('@/views/ResourceManager/View')), 'ResourceManagerView')

/* TAdminUserModuleUpdate更新 */
const TAdminUserModuleView = r => require.ensure([], () => r(require('@/views/TAdminUserModule/view')), 'TAdminUserModuleView')
/* TAdminUserModuleEdit编辑 */
const TAdminUserModuleEdit = r => require.ensure([], () => r(require('@/views/TAdminUserModule/edit')), 'TAdminUserModuleEdit')
/* TAdminUserModuleList列表 */
const TAdminUserModuleList = r => require.ensure([], () => r(require('@/views/TAdminUserModule/list')), 'TAdminUserModuleList')
/* TAdminUserModuleAdd添加 */
const TAdminUserModuleAdd = r => require.ensure([], () => r(require('@/views/TAdminUserModule/add')), 'TAdminUserModuleAdd')
/* TAnswerModuleUpdate更新 */
const TAnswerModuleView = r => require.ensure([], () => r(require('@/views/TAnswerModule/view')), 'TAnswerModuleView')
/* TAnswerModuleEdit编辑 */
const TAnswerModuleEdit = r => require.ensure([], () => r(require('@/views/TAnswerModule/edit')), 'TAnswerModuleEdit')
/* TAnswerModuleList列表 */
const TAnswerModuleList = r => require.ensure([], () => r(require('@/views/TAnswerModule/list')), 'TAnswerModuleList')
/* TAnswerModuleAdd添加 */
const TAnswerModuleAdd = r => require.ensure([], () => r(require('@/views/TAnswerModule/add')), 'TAnswerModuleAdd')
/* TAnswerSecondModuleUpdate更新 */
const TAnswerSecondModuleView = r => require.ensure([], () => r(require('@/views/TAnswerSecondModule/view')), 'TAnswerSecondModuleView')
/* TAnswerSecondModuleEdit编辑 */
const TAnswerSecondModuleEdit = r => require.ensure([], () => r(require('@/views/TAnswerSecondModule/edit')), 'TAnswerSecondModuleEdit')
/* TAnswerSecondModuleList列表 */
const TAnswerSecondModuleList = r => require.ensure([], () => r(require('@/views/TAnswerSecondModule/list')), 'TAnswerSecondModuleList')
/* TAnswerSecondModuleAdd添加 */
const TAnswerSecondModuleAdd = r => require.ensure([], () => r(require('@/views/TAnswerSecondModule/add')), 'TAnswerSecondModuleAdd')
/* TFollowPersonModuleUpdate更新 */
const TFollowPersonModuleView = r => require.ensure([], () => r(require('@/views/TFollowPersonModule/view')), 'TFollowPersonModuleView')
/* TFollowPersonModuleEdit编辑 */
const TFollowPersonModuleEdit = r => require.ensure([], () => r(require('@/views/TFollowPersonModule/edit')), 'TFollowPersonModuleEdit')
/* TFollowPersonModuleList列表 */
const TFollowPersonModuleList = r => require.ensure([], () => r(require('@/views/TFollowPersonModule/list')), 'TFollowPersonModuleList')
/* TFollowPersonModuleAdd添加 */
const TFollowPersonModuleAdd = r => require.ensure([], () => r(require('@/views/TFollowPersonModule/add')), 'TFollowPersonModuleAdd')
/* TFollowQuestionModuleUpdate更新 */
const TFollowQuestionModuleView = r => require.ensure([], () => r(require('@/views/TFollowQuestionModule/view')), 'TFollowQuestionModuleView')
/* TFollowQuestionModuleEdit编辑 */
const TFollowQuestionModuleEdit = r => require.ensure([], () => r(require('@/views/TFollowQuestionModule/edit')), 'TFollowQuestionModuleEdit')
/* TFollowQuestionModuleList列表 */
const TFollowQuestionModuleList = r => require.ensure([], () => r(require('@/views/TFollowQuestionModule/list')), 'TFollowQuestionModuleList')
/* TFollowQuestionModuleAdd添加 */
const TFollowQuestionModuleAdd = r => require.ensure([], () => r(require('@/views/TFollowQuestionModule/add')), 'TFollowQuestionModuleAdd')
/* TQuestionTagModuleUpdate更新 */
const TQuestionTagModuleView = r => require.ensure([], () => r(require('@/views/TQuestionTagModule/view')), 'TQuestionTagModuleView')
/* TQuestionTagModuleEdit编辑 */
const TQuestionTagModuleEdit = r => require.ensure([], () => r(require('@/views/TQuestionTagModule/edit')), 'TQuestionTagModuleEdit')
/* TQuestionTagModuleList列表 */
const TQuestionTagModuleList = r => require.ensure([], () => r(require('@/views/TQuestionTagModule/list')), 'TQuestionTagModuleList')
/* TQuestionTagModuleAdd添加 */
const TQuestionTagModuleAdd = r => require.ensure([], () => r(require('@/views/TQuestionTagModule/add')), 'TQuestionTagModuleAdd')
/* TQuestionsModuleUpdate更新 */
const TQuestionsModuleView = r => require.ensure([], () => r(require('@/views/TQuestionsModule/view')), 'TQuestionsModuleView')
/* TQuestionsModuleEdit编辑 */
const TQuestionsModuleEdit = r => require.ensure([], () => r(require('@/views/TQuestionsModule/edit')), 'TQuestionsModuleEdit')
/* TQuestionsModuleList列表 */
const TQuestionsModuleList = r => require.ensure([], () => r(require('@/views/TQuestionsModule/list')), 'TQuestionsModuleList')
/* TQuestionsModuleAdd添加 */
const TQuestionsModuleAdd = r => require.ensure([], () => r(require('@/views/TQuestionsModule/add')), 'TQuestionsModuleAdd')
/* TReportAnswerModuleUpdate更新 */
const TReportAnswerModuleView = r => require.ensure([], () => r(require('@/views/TReportAnswerModule/view')), 'TReportAnswerModuleView')
/* TReportAnswerModuleEdit编辑 */
const TReportAnswerModuleEdit = r => require.ensure([], () => r(require('@/views/TReportAnswerModule/edit')), 'TReportAnswerModuleEdit')
/* TReportAnswerModuleList列表 */
const TReportAnswerModuleList = r => require.ensure([], () => r(require('@/views/TReportAnswerModule/list')), 'TReportAnswerModuleList')
/* TReportAnswerModuleAdd添加 */
const TReportAnswerModuleAdd = r => require.ensure([], () => r(require('@/views/TReportAnswerModule/add')), 'TReportAnswerModuleAdd')
/* TReportQuestionModuleUpdate更新 */
const TReportQuestionModuleView = r => require.ensure([], () => r(require('@/views/TReportQuestionModule/view')), 'TReportQuestionModuleView')
/* TReportQuestionModuleEdit编辑 */
const TReportQuestionModuleEdit = r => require.ensure([], () => r(require('@/views/TReportQuestionModule/edit')), 'TReportQuestionModuleEdit')
/* TReportQuestionModuleList列表 */
const TReportQuestionModuleList = r => require.ensure([], () => r(require('@/views/TReportQuestionModule/list')), 'TReportQuestionModuleList')
/* TReportQuestionModuleAdd添加 */
const TReportQuestionModuleAdd = r => require.ensure([], () => r(require('@/views/TReportQuestionModule/add')), 'TReportQuestionModuleAdd')
/* TReportUserModuleUpdate更新 */
const TReportUserModuleView = r => require.ensure([], () => r(require('@/views/TReportUserModule/view')), 'TReportUserModuleView')
/* TReportUserModuleEdit编辑 */
const TReportUserModuleEdit = r => require.ensure([], () => r(require('@/views/TReportUserModule/edit')), 'TReportUserModuleEdit')
/* TReportUserModuleList列表 */
const TReportUserModuleList = r => require.ensure([], () => r(require('@/views/TReportUserModule/list')), 'TReportUserModuleList')
/* TReportUserModuleAdd添加 */
const TReportUserModuleAdd = r => require.ensure([], () => r(require('@/views/TReportUserModule/add')), 'TReportUserModuleAdd')
/* TSystemParamModuleUpdate更新 */
const TSystemParamModuleView = r => require.ensure([], () => r(require('@/views/TSystemParamModule/view')), 'TSystemParamModuleView')
/* TSystemParamModuleEdit编辑 */
const TSystemParamModuleEdit = r => require.ensure([], () => r(require('@/views/TSystemParamModule/edit')), 'TSystemParamModuleEdit')
/* TSystemParamModuleList列表 */
const TSystemParamModuleList = r => require.ensure([], () => r(require('@/views/TSystemParamModule/list')), 'TSystemParamModuleList')
/* TSystemParamModuleAdd添加 */
const TSystemParamModuleAdd = r => require.ensure([], () => r(require('@/views/TSystemParamModule/add')), 'TSystemParamModuleAdd')
/* TTagModuleUpdate更新 */
const TTagModuleView = r => require.ensure([], () => r(require('@/views/TTagModule/view')), 'TTagModuleView')
/* TTagModuleEdit编辑 */
const TTagModuleEdit = r => require.ensure([], () => r(require('@/views/TTagModule/edit')), 'TTagModuleEdit')
/* TTagModuleList列表 */
const TTagModuleList = r => require.ensure([], () => r(require('@/views/TTagModule/list')), 'TTagModuleList')
/* TTagModuleAdd添加 */
const TTagModuleAdd = r => require.ensure([], () => r(require('@/views/TTagModule/add')), 'TTagModuleAdd')
/* TUserModuleUpdate更新 */
const TUserModuleView = r => require.ensure([], () => r(require('@/views/TUserModule/view')), 'TUserModuleView')
/* TUserModuleEdit编辑 */
const TUserModuleEdit = r => require.ensure([], () => r(require('@/views/TUserModule/edit')), 'TUserModuleEdit')
/* TUserModuleList列表 */
const TUserModuleList = r => require.ensure([], () => r(require('@/views/TUserModule/list')), 'TUserModuleList')
/* TUserModuleAdd添加 */
const TUserModuleAdd = r => require.ensure([], () => r(require('@/views/TUserModule/add')), 'TUserModuleAdd')
/* VAnswerUserModuleUpdate更新 */
const VAnswerUserModuleView = r => require.ensure([], () => r(require('@/views/VAnswerUserModule/view')), 'VAnswerUserModuleView')
/* VAnswerUserModuleEdit编辑 */
const VAnswerUserModuleEdit = r => require.ensure([], () => r(require('@/views/VAnswerUserModule/edit')), 'VAnswerUserModuleEdit')
/* VAnswerUserModuleList列表 */
const VAnswerUserModuleList = r => require.ensure([], () => r(require('@/views/VAnswerUserModule/list')), 'VAnswerUserModuleList')
/* VAnswerUserModuleAdd添加 */
const VAnswerUserModuleAdd = r => require.ensure([], () => r(require('@/views/VAnswerUserModule/add')), 'VAnswerUserModuleAdd')
/* VQuestionUserModuleUpdate更新 */
const VQuestionUserModuleView = r => require.ensure([], () => r(require('@/views/VQuestionUserModule/view')), 'VQuestionUserModuleView')
/* VQuestionUserModuleEdit编辑 */
const VQuestionUserModuleEdit = r => require.ensure([], () => r(require('@/views/VQuestionUserModule/edit')), 'VQuestionUserModuleEdit')
/* VQuestionUserModuleList列表 */
const VQuestionUserModuleList = r => require.ensure([], () => r(require('@/views/VQuestionUserModule/list')), 'VQuestionUserModuleList')
/* VQuestionUserModuleAdd添加 */
const VQuestionUserModuleAdd = r => require.ensure([], () => r(require('@/views/VQuestionUserModule/add')), 'VQuestionUserModuleAdd')
/* VReportAnswerAnswerModuleUpdate更新 */
const VReportAnswerAnswerModuleView = r => require.ensure([], () => r(require('@/views/VReportAnswerAnswerModule/view')), 'VReportAnswerAnswerModuleView')
/* VReportAnswerAnswerModuleEdit编辑 */
const VReportAnswerAnswerModuleEdit = r => require.ensure([], () => r(require('@/views/VReportAnswerAnswerModule/edit')), 'VReportAnswerAnswerModuleEdit')
/* VReportAnswerAnswerModuleList列表 */
const VReportAnswerAnswerModuleList = r => require.ensure([], () => r(require('@/views/VReportAnswerAnswerModule/list')), 'VReportAnswerAnswerModuleList')
/* VReportAnswerAnswerModuleAdd添加 */
const VReportAnswerAnswerModuleAdd = r => require.ensure([], () => r(require('@/views/VReportAnswerAnswerModule/add')), 'VReportAnswerAnswerModuleAdd')
/* VReportQuestionQuestitionModuleUpdate更新 */
const VReportQuestionQuestitionModuleView = r => require.ensure([], () => r(require('@/views/VReportQuestionQuestitionModule/view')), 'VReportQuestionQuestitionModuleView')
/* VReportQuestionQuestitionModuleEdit编辑 */
const VReportQuestionQuestitionModuleEdit = r => require.ensure([], () => r(require('@/views/VReportQuestionQuestitionModule/edit')), 'VReportQuestionQuestitionModuleEdit')
/* VReportQuestionQuestitionModuleList列表 */
const VReportQuestionQuestitionModuleList = r => require.ensure([], () => r(require('@/views/VReportQuestionQuestitionModule/list')), 'VReportQuestionQuestitionModuleList')
/* VReportQuestionQuestitionModuleAdd添加 */
const VReportQuestionQuestitionModuleAdd = r => require.ensure([], () => r(require('@/views/VReportQuestionQuestitionModule/add')), 'VReportQuestionQuestitionModuleAdd')
/* VReportUserUserModuleUpdate更新 */
const VReportUserUserModuleView = r => require.ensure([], () => r(require('@/views/VReportUserUserModule/view')), 'VReportUserUserModuleView')
/* VReportUserUserModuleEdit编辑 */
const VReportUserUserModuleEdit = r => require.ensure([], () => r(require('@/views/VReportUserUserModule/edit')), 'VReportUserUserModuleEdit')
/* VReportUserUserModuleList列表 */
const VReportUserUserModuleList = r => require.ensure([], () => r(require('@/views/VReportUserUserModule/list')), 'VReportUserUserModuleList')
/* VReportUserUserModuleAdd添加 */
const VReportUserUserModuleAdd = r => require.ensure([], () => r(require('@/views/VReportUserUserModule/add')), 'VReportUserUserModuleAdd')

export const constantRouterMap = [
    {
        path: '',
        component: Layout,
        redirect: '/TUserModulelist',
        name: 'HomePage',
        meta: {
            title: '菜单'
        },
        noDropdown: true,
        children: [

            {
                path: 'TAdminUserModuleview',
                component: TAdminUserModuleView,
                name: 'TAdminUserModuleView',
                meta: {
                    title: 'TAdminUserModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TAdminUserModuleedit',
                component: TAdminUserModuleEdit,
                name: 'TAdminUserModuleEdit',
                meta: {
                    title: 'TAdminUserModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TAdminUserModulelist',
                component: TAdminUserModuleList,
                name: 'TAdminUserModuleList',
                meta: {
                    title: 'TAdminUserModuleList列表'
                },
                hidden: true
            }
            ,
            {
                path: 'TAdminUserModuleadd',
                component: TAdminUserModuleAdd,
                name: 'TAdminUserModuleAdd',
                meta: {
                    title: 'TAdminUserModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TAnswerModuleview',
                component: TAnswerModuleView,
                name: 'TAnswerModuleView',
                meta: {
                    title: 'TAnswerModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TAnswerModuleedit',
                component: TAnswerModuleEdit,
                name: 'TAnswerModuleEdit',
                meta: {
                    title: 'TAnswerModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TAnswerModulelist',
                component: TAnswerModuleList,
                name: 'TAnswerModuleList',
                meta: {
                    title: '用户回答管理'
                },
                hidden: false
            }
            ,
            {
                path: 'TAnswerModuleadd',
                component: TAnswerModuleAdd,
                name: 'TAnswerModuleAdd',
                meta: {
                    title: 'TAnswerModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TAnswerSecondModuleview',
                component: TAnswerSecondModuleView,
                name: 'TAnswerSecondModuleView',
                meta: {
                    title: 'TAnswerSecondModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TAnswerSecondModuleedit',
                component: TAnswerSecondModuleEdit,
                name: 'TAnswerSecondModuleEdit',
                meta: {
                    title: 'TAnswerSecondModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TAnswerSecondModulelist',
                component: TAnswerSecondModuleList,
                name: 'TAnswerSecondModuleList',
                meta: {
                    title: 'TAnswerSecondModuleList列表'
                },
                hidden: true
            }
            ,
            {
                path: 'TAnswerSecondModuleadd',
                component: TAnswerSecondModuleAdd,
                name: 'TAnswerSecondModuleAdd',
                meta: {
                    title: 'TAnswerSecondModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TFollowPersonModuleview',
                component: TFollowPersonModuleView,
                name: 'TFollowPersonModuleView',
                meta: {
                    title: 'TFollowPersonModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TFollowPersonModuleedit',
                component: TFollowPersonModuleEdit,
                name: 'TFollowPersonModuleEdit',
                meta: {
                    title: 'TFollowPersonModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TFollowPersonModulelist',
                component: TFollowPersonModuleList,
                name: 'TFollowPersonModuleList',
                meta: {
                    title: 'TFollowPersonModuleList列表'
                },
                hidden: true
            }
            ,
            {
                path: 'TFollowPersonModuleadd',
                component: TFollowPersonModuleAdd,
                name: 'TFollowPersonModuleAdd',
                meta: {
                    title: 'TFollowPersonModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TFollowQuestionModuleview',
                component: TFollowQuestionModuleView,
                name: 'TFollowQuestionModuleView',
                meta: {
                    title: 'TFollowQuestionModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TFollowQuestionModuleedit',
                component: TFollowQuestionModuleEdit,
                name: 'TFollowQuestionModuleEdit',
                meta: {
                    title: 'TFollowQuestionModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TFollowQuestionModulelist',
                component: TFollowQuestionModuleList,
                name: 'TFollowQuestionModuleList',
                meta: {
                    title: 'TFollowQuestionModuleList列表'
                },
                hidden: true
            }
            ,
            {
                path: 'TFollowQuestionModuleadd',
                component: TFollowQuestionModuleAdd,
                name: 'TFollowQuestionModuleAdd',
                meta: {
                    title: 'TFollowQuestionModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TQuestionTagModuleview',
                component: TQuestionTagModuleView,
                name: 'TQuestionTagModuleView',
                meta: {
                    title: 'TQuestionTagModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TQuestionTagModuleedit',
                component: TQuestionTagModuleEdit,
                name: 'TQuestionTagModuleEdit',
                meta: {
                    title: 'TQuestionTagModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TQuestionTagModulelist',
                component: TQuestionTagModuleList,
                name: 'TQuestionTagModuleList',
                meta: {
                    title: 'TQuestionTagModuleList列表'
                },
                hidden: true
            }
            ,
            {
                path: 'TQuestionTagModuleadd',
                component: TQuestionTagModuleAdd,
                name: 'TQuestionTagModuleAdd',
                meta: {
                    title: 'TQuestionTagModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TQuestionsModuleview',
                component: TQuestionsModuleView,
                name: 'TQuestionsModuleView',
                meta: {
                    title: 'TQuestionsModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TQuestionsModuleedit',
                component: TQuestionsModuleEdit,
                name: 'TQuestionsModuleEdit',
                meta: {
                    title: 'TQuestionsModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TQuestionsModulelist',
                component: TQuestionsModuleList,
                name: 'TQuestionsModuleList',
                meta: {
                    title: '问题管理'
                },
                hidden: false
            }
            ,
            {
                path: 'TQuestionsModuleadd',
                component: TQuestionsModuleAdd,
                name: 'TQuestionsModuleAdd',
                meta: {
                    title: 'TQuestionsModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportAnswerModuleview',
                component: TReportAnswerModuleView,
                name: 'TReportAnswerModuleView',
                meta: {
                    title: 'TReportAnswerModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportAnswerModuleedit',
                component: TReportAnswerModuleEdit,
                name: 'TReportAnswerModuleEdit',
                meta: {
                    title: 'TReportAnswerModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportAnswerModulelist',
                component: TReportAnswerModuleList,
                name: 'TReportAnswerModuleList',
                meta: {
                    title: '回答举报管理'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportAnswerModuleadd',
                component: TReportAnswerModuleAdd,
                name: 'TReportAnswerModuleAdd',
                meta: {
                    title: 'TReportAnswerModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportQuestionModuleview',
                component: TReportQuestionModuleView,
                name: 'TReportQuestionModuleView',
                meta: {
                    title: 'TReportQuestionModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportQuestionModuleedit',
                component: TReportQuestionModuleEdit,
                name: 'TReportQuestionModuleEdit',
                meta: {
                    title: 'TReportQuestionModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportQuestionModulelist',
                component: TReportQuestionModuleList,
                name: 'TReportQuestionModuleList',
                meta: {
                    title: '问题举报管理'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportQuestionModuleadd',
                component: TReportQuestionModuleAdd,
                name: 'TReportQuestionModuleAdd',
                meta: {
                    title: 'TReportQuestionModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportUserModuleview',
                component: TReportUserModuleView,
                name: 'TReportUserModuleView',
                meta: {
                    title: 'TReportUserModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportUserModuleedit',
                component: TReportUserModuleEdit,
                name: 'TReportUserModuleEdit',
                meta: {
                    title: 'TReportUserModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportUserModulelist',
                component: TReportUserModuleList,
                name: 'TReportUserModuleList',
                meta: {
                    title: '用户举报管理'
                },
                hidden: true
            }
            ,
            {
                path: 'TReportUserModuleadd',
                component: TReportUserModuleAdd,
                name: 'TReportUserModuleAdd',
                meta: {
                    title: 'TReportUserModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TSystemParamModuleview',
                component: TSystemParamModuleView,
                name: 'TSystemParamModuleView',
                meta: {
                    title: 'TSystemParamModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TSystemParamModuleedit',
                component: TSystemParamModuleEdit,
                name: 'TSystemParamModuleEdit',
                meta: {
                    title: 'TSystemParamModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TSystemParamModulelist',
                component: TSystemParamModuleList,
                name: 'TSystemParamModuleList',
                meta: {
                    title: '系统参数管理'
                },
                hidden: true
            }
            ,
            {
                path: 'TSystemParamModuleadd',
                component: TSystemParamModuleAdd,
                name: 'TSystemParamModuleAdd',
                meta: {
                    title: 'TSystemParamModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TTagModuleview',
                component: TTagModuleView,
                name: 'TTagModuleView',
                meta: {
                    title: 'TTagModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TTagModuleedit',
                component: TTagModuleEdit,
                name: 'TTagModuleEdit',
                meta: {
                    title: 'TTagModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TTagModulelist',
                component: TTagModuleList,
                name: 'TTagModuleList',
                meta: {
                    title: '分类管理'
                },
                hidden: false
            }
            ,
            {
                path: 'TTagModuleadd',
                component: TTagModuleAdd,
                name: 'TTagModuleAdd',
                meta: {
                    title: 'TTagModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'TUserModuleview',
                component: TUserModuleView,
                name: 'TUserModuleView',
                meta: {
                    title: 'TUserModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'TUserModuleedit',
                component: TUserModuleEdit,
                name: 'TUserModuleEdit',
                meta: {
                    title: 'TUserModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'TUserModulelist',
                component: TUserModuleList,
                name: 'TUserModuleList',
                meta: {
                    title: '用户管理'
                },
                hidden: false
            }
            ,
            {
                path: 'TUserModuleadd',
                component: TUserModuleAdd,
                name: 'TUserModuleAdd',
                meta: {
                    title: 'TUserModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'VAnswerUserModuleview',
                component: VAnswerUserModuleView,
                name: 'VAnswerUserModuleView',
                meta: {
                    title: 'VAnswerUserModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'VAnswerUserModuleedit',
                component: VAnswerUserModuleEdit,
                name: 'VAnswerUserModuleEdit',
                meta: {
                    title: 'VAnswerUserModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'VAnswerUserModulelist',
                component: VAnswerUserModuleList,
                name: 'VAnswerUserModuleList',
                meta: {
                    title: 'VAnswerUserModuleList列表'
                },
                hidden: true
            }
            ,
            {
                path: 'VAnswerUserModuleadd',
                component: VAnswerUserModuleAdd,
                name: 'VAnswerUserModuleAdd',
                meta: {
                    title: 'VAnswerUserModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'VQuestionUserModuleview',
                component: VQuestionUserModuleView,
                name: 'VQuestionUserModuleView',
                meta: {
                    title: 'VQuestionUserModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'VQuestionUserModuleedit',
                component: VQuestionUserModuleEdit,
                name: 'VQuestionUserModuleEdit',
                meta: {
                    title: 'VQuestionUserModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'VQuestionUserModulelist',
                component: VQuestionUserModuleList,
                name: 'VQuestionUserModuleList',
                meta: {
                    title: 'VQuestionUserModuleList列表'
                },
                hidden: true
            }
            ,
            {
                path: 'VQuestionUserModuleadd',
                component: VQuestionUserModuleAdd,
                name: 'VQuestionUserModuleAdd',
                meta: {
                    title: 'VQuestionUserModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportAnswerAnswerModuleview',
                component: VReportAnswerAnswerModuleView,
                name: 'VReportAnswerAnswerModuleView',
                meta: {
                    title: 'VReportAnswerAnswerModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportAnswerAnswerModuleedit',
                component: VReportAnswerAnswerModuleEdit,
                name: 'VReportAnswerAnswerModuleEdit',
                meta: {
                    title: 'VReportAnswerAnswerModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportAnswerAnswerModulelist',
                component: VReportAnswerAnswerModuleList,
                name: 'VReportAnswerAnswerModuleList',
                meta: {
                    title: '举报回答管理'
                },
                hidden: false
            }
            ,
            {
                path: 'VReportAnswerAnswerModuleadd',
                component: VReportAnswerAnswerModuleAdd,
                name: 'VReportAnswerAnswerModuleAdd',
                meta: {
                    title: 'VReportAnswerAnswerModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportQuestionQuestitionModuleview',
                component: VReportQuestionQuestitionModuleView,
                name: 'VReportQuestionQuestitionModuleView',
                meta: {
                    title: 'VReportQuestionQuestitionModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportQuestionQuestitionModuleedit',
                component: VReportQuestionQuestitionModuleEdit,
                name: 'VReportQuestionQuestitionModuleEdit',
                meta: {
                    title: 'VReportQuestionQuestitionModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportQuestionQuestitionModulelist',
                component: VReportQuestionQuestitionModuleList,
                name: 'VReportQuestionQuestitionModuleList',
                meta: {
                    title: '举报问题管理'
                },
                hidden: false
            }
            ,
            {
                path: 'VReportQuestionQuestitionModuleadd',
                component: VReportQuestionQuestitionModuleAdd,
                name: 'VReportQuestionQuestitionModuleAdd',
                meta: {
                    title: 'VReportQuestionQuestitionModuleAdd添加'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportUserUserModuleview',
                component: VReportUserUserModuleView,
                name: 'VReportUserUserModuleView',
                meta: {
                    title: 'VReportUserUserModuleUpdate更新'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportUserUserModuleedit',
                component: VReportUserUserModuleEdit,
                name: 'VReportUserUserModuleEdit',
                meta: {
                    title: 'VReportUserUserModuleEdit编辑'
                },
                hidden: true
            }
            ,
            {
                path: 'VReportUserUserModulelist',
                component: VReportUserUserModuleList,
                name: 'VReportUserUserModuleList',
                meta: {
                    title: '举报用户管理'
                },
                hidden: false
            }
            ,
            {
                path: 'VReportUserUserModuleadd',
                component: VReportUserUserModuleAdd,
                name: 'VReportUserUserModuleAdd',
                meta: {
                    title: 'VReportUserUserModuleAdd添加'
                },
                hidden: true
            }

        ]
    },
    {
        path: '/login',
        component: Login,
        hidden: true
    },
    {
        path: '/AdminLogin',
        component: AdminLogin,
        hidden: false
    },
    {
        path: '/ForgetPassword',
        component: ForgetPassword,
        hidden: false
    }
]
export const routerMap = {
    "9901": {
        path: 'test/test',
        component: Login,
        name: 'UserMgt',
        meta: {
            title: '用户管理'
        }
    }
}
export default new Router({
    // mode: 'history', // require service support
    scrollBehavior: () => ({
        y: 0
    }),
    routes: constantRouterMap
})
