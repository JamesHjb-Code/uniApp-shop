<template>
	<view class="news-detail">
		<text class="title">标题</text>
		<view class="info">
			<text>发表时间：</text>
			<text>浏览：</text>
		</view>
		<view class="content">
			内容
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		},
		methods: {
			getNewsDetail(){
				this.$myRuquest({
					url:'/api/getnew/'
				})
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
