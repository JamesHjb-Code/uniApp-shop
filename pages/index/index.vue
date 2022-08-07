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
			<view class="nav-item" v-for="item in navList" :key="item.id" @click="clickNavItem(item.path)">
				<view class="iconfont" :class="item.icon"></view>
				<text class="item-text">{{item.text}}</text>
			</view>
		</view>
		<!-- 热门商品 -->
		<view class="hot-goods">
			<view class="hot-title">热门商品</view>
			<shop-list :shopList="shopList"></shop-list>
		</view>
	</view>
</template>

<script>
	import shopList from '@/components/shop-list/shop-list.vue'
	export default {
		components:{
			shopList
		},
		data() {
			return {
				swipers: [], // 轮播图数据
				navList: [ // 导航数据
					{
						id: 1,
						text: '小斌超市',
						icon: 'icon-ziyuan',
						path:'/pages/shop/shop'
					},
					{
						id: 2,
						text: '联系我们',
						icon: 'icon-guanyuwomen',
						path:'/pages/contact/contact'
					},
					{
						id: 3,
						text: '社区图片',
						icon: 'icon-tupian',
						path:'/pages/pics/pics'
					},
					{
						id: 4,
						text: '学习视频',
						icon: 'icon-shipin',
						path:'pages/videos/videos'
					},
				],
				shopList:[],// 热门商品列表
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
					this.shopList = res.data.result
				}else {
					this.shopList = []
				}
			},
			// 点击跳转导航函数
			clickNavItem(path){
				uni.navigateTo({
					url:path
				})
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

		}
	}
</style>
