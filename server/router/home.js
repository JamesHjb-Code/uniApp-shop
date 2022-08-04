/*
create: James
time: 2022.8.4
to:首页
*/

const express = require('express')
const router = express.Router()
// 导入并使用首页处理函数
const home_handler = require('../router_handler/home')
// 获取轮播图数据
router.get('/slideshow',home_handler.getSlideshow)

module.exports = router