<template>
	<view class="news-detail">
		<text class="title">{{detail.title}}</text>
		<view class="info">
			<text>发表时间：{{detail.create_time}}</text>
			<text>浏览：{{detail.browse_count}}</text>
		</view>
		<view class="content">
			<rich-text :nodes="detail.content"></rich-text>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id:null,
				detail:{}
			}
		},
		onLoad(options){
			this.id = options.id
			this.getNewsDetail()
		},
		methods: {
			async getNewsDetail(){
				const params = {
					id:this.id
				}
				const res = await this.$myRequest({
					url:'/news/getDetail',
					data:params
				})
				if(res.data.success){
					console.log(res.data.result[0])
					this.detail = res.data.result[0]
				}else{
					this.detail= {}
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
.news-detail{
	font-size:30rpx;
	.title{
		text-align: center;
		width:100%;
		display: block;
		margin:20rpx 0;
	}
	.info{
		display: flex;
		justify-content: space-between;
	}
}
</style>
