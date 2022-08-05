<template>
	<view class="content">
	</view>
</template>

<script>
	export default {
		data() {
			return {
				title: 'Hello',
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

<style>
	.content {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
</style>
