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
			status:0,
			message:'获取轮播图数据成功!',
			data:results,
		})
	})
}
