/*
create: James
time: 2022.8.7
to:处理社区图片操作
*/

// 导入数据库操作模块
const db = require('../db/index')

// 获取导航列表
exports.getNavigatorList = (req,res)=>{
	const sql = 'select * from navigatorlist'
	db.query(sql,(err,results)=>{
		if(err) return res.lose(err)
		res.send({
			message:'获取导航列表数据成功',
			success:true,
			status:0,
			result:results
		})
	})
}