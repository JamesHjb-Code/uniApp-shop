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
			<view class="content">
				<rich-text :nodes="shopInfo.detail"></rich-text>
			</view>
		</view>
		<view class="bottom-shop-nav"></view>
		<uni-goods-nav :fill="true" :options="options" :buttonGroup="buttonGroup" @click="onClick"
			@buttonClick="buttonClick" />
	</view>
</template>

<script>
	export default {
		data() {
			return {
				id: 0,
				imgList: [],
				shopInfo: {},
				options: [ {
					icon: 'shop',
					text: '店铺',
					infoColor: "red"
				}, {
					icon: 'cart',
					text: '购物车',
					info: 2
				}],
				buttonGroup: [{
						text: '加入购物车',
						backgroundColor: '#ff0000',
						color: '#fff'
					},
					{
						text: '立即购买',
						backgroundColor: '#ffa200',
						color: '#fff'
					}
				]
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
				if (res.data.success) {
					this.imgList = res.data.result

				} else {
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
				if (res.data.success) {
					this.shopInfo = res.data.result[0]

				} else {
					this.shopInfo = []
				}
			},
			// 商品详情导航
			onClick(e) {
				uni.showToast({
					title: `点击${e.content.text}`,
					icon: 'none'
				})
			},
			buttonClick(e) {
				console.log(e)
				this.options[1].info++
			}

		}
	}
</script>

<style lang="scss" scoped>
	.shop-detail-wrapper {
		height: 750rpx;

		.swiper-wrapper {
			height: 700rpx;
		}

		.swiper-img {
			width: 100%;
			height: 100%;
		}

		.shop-conent {
			padding: 10px;

			.price {
				font-size: 35rpx;
				color: $shop-color;

				.price-raw {
					padding-left: 20rpx;
					color: #ccc;
					font-size: 28rpx;
					text-decoration: line-through;
				}
			}

			.shop-name {
				font-size: 32rpx;
				line-height: 60rpx;
			}
		}

		.freight-content {
			padding: 0 10px;
			font-size: 32rpx;
			line-height: 70rpx;
		}

		.detail-content {
			.detail-title {
				font-size: 32rpx;
				padding-left: 10px;
				border-bottom: 1px solid #eee;
				line-height: 70rpx;
			}

			.content {
				padding: 10px;
				font-size: 28rpx;
				color: #333;
			}
		}
		.bottom-shop-nav{
			position: fixed;
			bottom:0;
			width: 100%;
		}
	}

	.line {
		height: 10rpx;
		background: #e5e5e5;
	}
</style>
<p>荣耀6
	Plus，该机型分为两款型号，分别为PE-TL10和PE-UL00的新机型，并且根据工信部设备认证中心公布的信息显示，移动版本PE-TL20和PE-TL00M也已经拿到了入网许可证，拥有7.5mm的纤薄机身，支持TDD-LTE/TD-SCDMA/GSM网络。双800万后置摄像头+800万前置摄像头。采用5.5英寸1080p分辨率显示屏，搭载1.8GHz麒麟925八核处理器，内置3GB
	RAM+32GB ROM存储组合，支持存储卡扩展。</p>
<p align=\"center\"><span style=\"color:#FF0000;font-size:16px;\"></span> </p>
