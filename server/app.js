// 导入express模块
const express = require('express')
// 创建express服务器
const app = express()

// 导入并配置cors中间件，配置跨域
const cors = require('cors')
app.use(cors())

// 开启服务器
app.listen(3007,()=>{
	console.log('api serve running at http://localhost:3007')
})