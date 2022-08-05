<template>
	<view class="home">
		<swiper indicator-dots circular>
			<swiper-item v-for="item in swipers" :key="item.id">
				<image :src="item.img"></image>
			</swiper-item>
		</swiper>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				swipers: [],
			}
		},
		onLoad() {
			this.getSwipers()
		},
		methods: {
			// 获取轮播图数据
			async getSwipers() {
				const res = await this.$myRequest({
					url: '/home/slideshow',
				})
				if (res.data.success) {
					this.swipers = res.data.result
				} else {
					this.swipers = []
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	.home{
		swiper{
		width:750rpx;
		height:380rpx;
			image{
				width:100%;
				height:100%;
			}
		}
	}
</style>
