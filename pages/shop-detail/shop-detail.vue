<template>
	<view class="shop-detail-wrapper">
		<swiper class="swiper-wrapper" indicator-dots circular>
			<swiper-item v-for="item in imgList" :key="item.id">
				<image class="swiper-img" :src="item.img"></image> 
			</swiper-item>
		</swiper>
		<view class="shop-conent">
			<view class="price">
				<text class="price-hot">￥{{shopInfo.sellPrice}}</text>
				<text class="price-raw">￥{{shopInfo.marketPrice}}</text>
			</view>
			<view class="shop-name">{{shopInfo.title}}</view>
		</view>
		<view class="line"></view>
		<view class="freight-content">
			<view>货号：{{shopInfo.freight_id}}</view>
			<view>库存：{{shopInfo.repertory}}</view>
		</view>
		<view class="line"></view>
		<view class="detail-content">
			<view class="detail-title">详情内容</view>
			<view class="content"><rich-text :nodes="shopInfo.detail"></rich-text></view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id: 0,
				imgList: [],
				shopInfo:{}
			}
		},
		onLoad(options) {
			this.id = options.id
			this.getShopDetailImg()
			this.getShopInfo()
		},
		methods: {
			// 获取商品详情图数据
			async getShopDetailImg() {
				const params = {
					id: this.id
				}
				const res = await this.$myRequest({
					url: '/shop/getShopCarousel',
					data: params
				})
				if(res.data.success){
					this.imgList = res.data.result

				}else{
					this.imgList = []
				}
			},
			// 获取商品信息数据
			async getShopInfo() {
				const params = {
					id: this.id
				}
				const res = await this.$myRequest({
					url: '/shop/getShopInfo',
					data: params
				})
				if(res.data.success){
					this.shopInfo = res.data.result[0]
			
				}else{
					this.shopInfo = []
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
.shop-detail-wrapper{
	height:750rpx;
	.swiper-wrapper{
		height:700rpx;
	}
	.swiper-img{
		width: 100%;
		height:100%;
	}
	.shop-conent{
		padding:10px;
		.price{
			font-size: 35rpx;
			color:$shop-color;
			.price-raw{
				padding-left:20rpx;
				color: #ccc;
				font-size:28rpx;
				text-decoration: line-through;
			}
		}
		.shop-name{
			font-size:32rpx;
			line-height: 60rpx;
		}
	}
	.freight-content{
		padding:0 10px;
		font-size:32rpx;
		line-height: 70rpx;
	}
	.detail-content{
		.detail-title{
			font-size:32rpx;
			padding-left:10px;
			border-bottom:1px solid #eee;
			line-height:70rpx;
		}
		.content{
			padding:10px;
			font-size:28rpx;
			color:#333;
		}
	}
}
.line{
	height:10rpx;
	background: #e5e5e5;
}
</style>
