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