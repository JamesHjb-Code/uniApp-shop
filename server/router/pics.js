/*
create: James
time: 2022.8.7
to:社区图片
*/
const express = require('express')
const router = express.Router()
// 导入并使用社区图片处理函数
const pics_handler = require('../router_handler/pics')
// 获取导航列表数据
router.get('/navigator',pics_handler.getNavigatorList)

module.exports = router