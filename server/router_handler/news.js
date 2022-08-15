/*
create:James
time:2022.08.11
to:处理资讯问题
*/

const db = require('../db/index')

// 获取资讯列表
exports.getNewsList = (req,res) =>{
	const sql = 'select * from news'
	db.query(sql,(err,results)=>{
		if(err) return res.lose(err)
		res.send({
			message:'获取资讯数据成功',
			success:true,
			status:0,
			result:results
		})
	})
}
// 根据资讯Id获取详情内容
exports.getnewsDetail = (req,res) =>{
	const id = parseInt(req.query.id)
	const sql = `select * from news where id=?`
	db.query(sql,[id],(err,results)=>{
		if(err) return res.lose(err)
		res.send({
			message:'获取资讯详情成功',
			success:true,
			status:0,
			result:results
		})
	})
}