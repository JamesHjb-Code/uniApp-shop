// 导入express模块
const express = require('express')
// 创建express服务器
const app = express()

// 导入并配置cors中间件，配置跨域
const cors = require('cors')
app.use(cors())

// 封装错误函数的中间件(放在模块路由前)
app.use((req,res,next)=>{
	// status：1表示错误情况
		res.lose = (err,status = 1)=>{
			res.send({
				status,
				message:err instanceof Error ?err.message:err,
			})
		}
		next()
})

// 导入并使用首页路由模块
const homeRouter = require('./router/home')
app.use('/home',homeRouter)

// 导入并使用社区图片路由模块
const picsRouter = require('./router/pics')
app.use('/pics',picsRouter)

// 导入并使用资讯路由模块
const newsRouter = require('./router/news')
app.use('/news',newsRouter)

// 导入并使用商品路由模块
const shopRouter = require('./router/shop')
app.use('/shop',shopRouter)



// 配置服务器
const port = 3006
const host = '127.0.0.1'
app.listen(3006,()=>{
	console.log('api serve running at http://${host}:${port}')
})