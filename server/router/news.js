/*
creates:James
time:2022.08.11
to:新闻事件
*/

const express = require('express')
const router = express.Router()
// 导入并使用资讯处理函数
const news_handler = require('../router_handler/news')
// 获取资讯列表
router.get('/information',news_handler.getNewsList)
// 获取根据资讯id详情内容
router.get('/getDetail',news_handler.getnewsDetail)
module.exports = router