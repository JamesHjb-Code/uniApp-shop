<template>
	<view class="goods-list">
		<view class="goods-item" v-for="item in shopList" :key="item.id">
			<image class="goods-img" :src="item.img"></image>
			<view class="goods-price">
				<text>￥{{item.marketPrice}}</text>
				<text>￥{{item.sellPrice}}</text>
			</view>
			<view class="goods-name">
				{{item.title}}
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		props:{
			"shopList":{
				type:Array,
				default:true
			}
		},
		data() {
			return {

			}
		},
		
		methods: {

		}
	}
</script>

<style lang="scss" scoped>
	.goods-list {
		padding: 0 15rpx;
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;

		.goods-item {
			box-sizing: border-box;
			background: #fff;
			width: 355rpx;
			margin: 10rpx 0rpx;
			padding: 15rpx;

			.goods-img {
				width: 80%;
				height: 300rpx;
				margin: 0 10%;
			}

			.goods-price {
				color: $shop-color;
				font-size: 36rpx;

				text:nth-child(2) {
					color: #ccc;
					font-size: 28rpx;
					margin-left: 17rpx;
					text-decoration: line-through;
				}
			}

			.goods-name {
				font-size: 28rpx;
				line-height: 50rpx;
			}
		}
	}
</style>
