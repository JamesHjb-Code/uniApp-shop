<template>
	<view>
		<view class="news-item" v-for="item in newsList" :key="item.id">
			<image class="news-img" :src="item.img"></image>
			<view class="right-content">
				<view class="news-title">
					<text>{{item.title}}</text>
				</view>
				<view class="news-info">
					<text>发表时间：{{deliverTime(item.create_time)}}</text>
					<text>浏览：{{item.browse_count}}</text>
				</view>
			</view>
		</view>
	</view>
	</view>
</template>

<script>
	import moment from 'moment'
	export default {
		props: {
			newsList: {
				type:Array,
				require:true
			}
		},
		data() {
			return {
				
			}
		},
		methods: {
			deliverTime(date){
				return moment(date).format("YYYY-MM-DD HH:mm:ss")
			}
		}
	}
</script>

<style lang="scss" scoped>
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
				font-size: 24rpx;

				text:nth-child(2) {
					margin-left: 30rpx;
				}
			}
		}
	}
</style>
