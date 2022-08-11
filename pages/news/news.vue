<template>
	<view class="news">
		<news-list :newsList="newsList"></news-list>
	</view>
</template>

<script>
	import newsList from '@/components/news-list/news-list.vue'
	export default {
		components: {
			newsList
		},
		data() {
			return {
				newsList: []
			}
		},
		onLoad() {
			this.getNewsList()
		},
		methods: {
			// 获取资讯列表
			async getNewsList() {
				const res = await this.$myRequest({
					url: '/news/information'
				})
				if (res.data.success) {
					this.newsList = res.data.result
				} else {
					this.newsList = []
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	.news {}
</style>
