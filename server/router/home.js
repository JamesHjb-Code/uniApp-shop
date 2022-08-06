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
router.get('/slideshow',home_handler.getSlideShow)

// 获取热门商品数据
router.get('/hotshop',home_handler.getHotShop)
module.exports = router