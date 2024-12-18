const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[

                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"公司类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGongsi"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"行业管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryHangye"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"求职意向管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryJianli"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"考研专业管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryKaoyanzhuanye"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"招聘类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryLeixing"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"单位满意状态管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryManyi"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"所属类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionarySuoshuleixing"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"通知类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryTongzhi"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"招聘岗位管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryZhaopin"
                    }
                ],
                "menu":"基础数据管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"学生管理",
                        "menuJump":"列表",
                        "tableName":"xuesheng"
                    }
					,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公司管理",
                        "menuJump":"列表",
                        "tableName":"gongsi"
                    }
					,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"老师管理",
                        "menuJump":"列表",
                        "tableName":"laoshi"
                    }
                ],
                "menu":"用户管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"简历管理",
                        "menuJump":"列表",
                        "tableName":"jianli"
                    }
                ],
                "menu":"简历管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "报表",
                            "修改",
                            "删除"
                        ],
                        "menu":"实习管理",
                        "menuJump":"列表",
                        "tableName":"shixi"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"实习日志管理",
                        "menuJump":"列表",
                        "tableName":"shixirizhi"
                    }
                ],
                "menu":"实习管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"通知管理",
                        "menuJump":"列表",
                        "tableName":"tongzhi"
                    }
                ],
                "menu":"通知管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"职位招聘管理",
                        "menuJump":"列表",
                        "tableName":"zhaopin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"职位留言管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"职位收藏管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinCollection"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"简历投递管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinToudi"
                    }
                ],
                "menu":"职位招聘管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"职位招聘管理",
                        "menuJump":"列表",
                        "tableName":"zhaopin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改"
                        ],
                        "menu":"职位留言管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinLiuyan"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "审核"
                        ],
                        "menu":"简历投递管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinToudi"
                    }
                ],
                "menu":"职位招聘管理"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"公司",
        "tableName":"gongsi"
    }
	,
	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公司管理",
                        "menuJump":"列表",
                        "tableName":"gongsi"
                    }
                ],
                "menu":"公司管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"简历管理",
                        "menuJump":"列表",
                        "tableName":"jianli"
                    }
                ],
                "menu":"简历管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "报表"
                        ],
                        "menu":"实习管理",
                        "menuJump":"列表",
                        "tableName":"shixi"
                    }
					,
					{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"实习日志",
                        "menuJump":"列表",
                        "tableName":"shixirizhi"
                    }
                ],
                "menu":"实习管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"通知管理",
                        "menuJump":"列表",
                        "tableName":"tongzhi"
                    }
                ],
                "menu":"通知管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"职位招聘管理",
                        "menuJump":"列表",
                        "tableName":"zhaopin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"职位留言管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinLiuyan"
                    }
					,
					{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"简历投递管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinToudi"
                    }
                ],
                "menu":"职位招聘管理"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"老师",
        "tableName":"laoshi"
    }
]
    }
}
export default menu;