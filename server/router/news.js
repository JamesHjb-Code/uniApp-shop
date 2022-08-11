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

module.exports = router