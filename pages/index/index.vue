<template>
	<view class="home">
		<!-- 轮播图 -->
		<swiper indicator-dots circular>
			<swiper-item v-for="item in swipers" :key="item.id">
				<image :src="item.img"></image>
			</swiper-item>
		</swiper>
		<!-- 导航区域 -->
		<view class="nav">
			<view class="nav-item" v-for="item in navList" :key="item.id">
				<view class="iconfont" :class="item.icon"></view>
				<text class="item-text">{{item.text}}</text>
			</view>
		</view>
		<!-- 热门商品 -->
		<view class="hot-goods">
			<view class="hot-title">热门商品</view>
			<view class="goods-list">
				<view class="goods-item" v-for="item in hotGoodsList" :key="item.id">
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
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				swipers: [], // 轮播图数据
				navList: [ // 导航数据
					{
						id: 1,
						text: '小斌超市',
						icon: 'icon-ziyuan'
					},
					{
						id: 2,
						text: '联系我们',
						icon: 'icon-guanyuwomen'
					},
					{
						id: 3,
						text: '社区图片',
						icon: 'icon-tupian'
					},
					{
						id: 4,
						text: '学习视频',
						icon: 'icon-shipin'
					},
				],
				hotGoodsList:[],// 热门商品列表
			}
		},
		onLoad() {
			this.getSwipers()
			this.getHotGoods()
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
			},
			// 获取热门商品列表数据
			async getHotGoods(){
				const res = await this.$myRequest({
					url:'/home/hotshop'
				})
				if(res.data.success){
					this.hotGoodsList = res.data.result
				}else {
					this.hotGoodsList = []
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	.home {
		swiper {
			width: 750rpx;
			height: 380rpx;

			image {
				width: 100%;
				height: 100%;
			}
		}

		.nav {
			display: flex;

			.nav-item {
				flex: 1;
				text-align: center;

				.iconfont {
					width: 120rpx;
					height: 120rpx;
					background: $shop-color;
					border-radius: 60rpx;
					margin: 10px auto;
					line-height: 120rpx;
					color: #fff;
					font-size: 50rpx;
				}

				.item-text {
					font-size: 30rpx;
				}
			}
		}

		.hot-goods {
			background: #eee;
			overflow: hidden;
			margin-top: 20rpx;

			.hot-title {
				height: 100rpx;
				line-height: 100rpx;
				color: $shop-color;
				text-align: center;
				letter-spacing: 40rpx;
				background: #fff;
				margin: 7rpx 0;
			}
			.goods-list{
				padding:0 15rpx;
				display: flex;
				flex-wrap: wrap;
				justify-content: space-between;
				.goods-item{
					box-sizing: border-box;
					background: #fff;
					width:355rpx;
					margin:10rpx 0rpx;
					padding:15rpx;
					.goods-img{
						width:80%;
						height:300rpx;
					}
					.goods-price{
						color:$shop-color;
						font-size:36rpx;
						text:nth-child(2){
							color:#ccc;
							font-size:28rpx;
							margin-left:17rpx;
							text-decoration: line-through;
						}
					}
					.goods-name{
						font-size:28rpx;
						line-height: 50rpx;
					}
				}
			}
		}
	}
</style>
