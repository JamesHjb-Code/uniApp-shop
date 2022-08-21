/**
create: James
time: 2022.8.21
to:商品
 */

// 导入数据库操作模块
const db = require('../db/index')

// 获取根据商品id轮播图
exports.getShopCarousel = (req,res) =>{
	const params = parseInt(req.query.id)
	const sql = 'select * from shopdetailimg where shop_id = ?'
	db.query(sql,[params],(err,results)=>{
		if(err) return res.lose(err)
		res.send({
			message:'获取商品详情轮播图数据成功',
			success:true,
			status:0,
			result:results
		})
	})
}

// 获取根据商品id商品信息
exports.getShopInfo = (req,res) =>{
	const params = parseInt(req.query.id)
	const sql = 'select * from hotshop where id = ?'
	db.query(sql,[params],(err,results)=>{
		if(err) return res.lose(err)
		res.send({
			message:'获取商品信息数据成功',
			success:true,
			status:0,
			result:results
		})
	})
}