<template>
	<view class="content">
	</view>
</template>

<script>
	export default {
		data() {
			return {
				title: 'Hello',
				swipers:[],
			}
		},
		onLoad() {
			this.getSwipers()
		},
		methods: {
			// 获取轮播图数据
			getSwipers(){
				uni.request({
					url:'http://127.0.0.1:3006/home/slideshow',
					success: (res) => {
						console.log(res)
						if(res.data.success){
							this.swipers = res.data.result
						}else{
							return uni.showToast({
								title:'获取数据失败'
							})
						}
					}
				})
			}
		}
	}
</script>

<style>
	.content {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
</style>
