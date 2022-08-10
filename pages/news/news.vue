<template>
	<view class="news">
		<view class="news-item">
			<image class="news-img" src="/static/pics/animeone.jpeg"></image>
			<view class="right-content">
				<view class="news-title">
					1季度多家房企利润跌幅超50%，去库存促销战打响
				</view>
				<view class="news-info">
					<text>发表时间：</text>
					<text>浏览：</text>
				</view>
			</view>
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

		}
	}
</script>

<style lang="scss" scoped>
	.news {
		.news-item {
			display: flex;
			padding: 10rpx 20rpx;
			border-bottom: 1px solid $shop-color;

			.news-img {
				max-width: 250rpx;
				height: 150rpx;
			}

			.right-content {
				margin-left: 15rpx;
				display: flex;
				flex-direction: column;
				justify-content: space-between;
				.news-title {
					font-size: 33rpx;
				}

				.news-info {
					font-size:24rpx;
					text:nth-child(2){
						margin-left: 30rpx;
					}
				}
			}
		}
	}
</style>
