/*
create: James
time: 2022.8.4
to:处理首页操作
*/

// 导入数据库操作模块
const db = require('../db/index')

// 获取轮播图数据
exports.getSlideShow = (req,res) =>{
	// 定义sql语句
	const sql = `select * from slideimg`
	// 调用db.query()执行sql语句
	db.query(sql,(err,results)=>{
		if(err) return res.lose(err)
		res.send({
			message:'获取轮播图数据成功!',
			success:true,
			status:0,
			result:results,
		})
	})
}
// 获取热门商品数据(查询分页)
exports.getHotShop = (req,res) =>{
	// 获取从客户端数据过来，同时转换整数
	const params = {
		page:parseInt(req.query.page),
		count:parseInt(req.query.count)
	}
	// 验证是否数据存在，否则给默认的值
	if(!params.page) params.page = 1
	if(!params.count) params.count = 10
	// 计算分页
	const handlePage = (params.page-1)*params.count;
	// 定义sql语句
	const sql = `select * from hotshop limit ?,?`
	// 调用db.query()执行sql语句
	db.query(sql,[handlePage,params.count],(err,results)=>{
		if(err) return res.lose(err)
		res.send({
			message:'获取热门商品数据成功!',
			success:true,
			status:0,
			result:results,
		})
	})
}