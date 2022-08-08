<template>
	<view class="contact">
		<image class="img" src="http://www.itcast.cn/2018czydz/images/gywmban.jpg"></image>
		<view class="info-text">
			<view class="phone-text" @click="phone">联系电话：400-2344-5555（点击拨打）</view>
			<view class="adress-text">联系地址：广东省深圳市南山区西丽街道</view>
		</view>
		<map class="map-wrapper" :longitude="mapConfig.longitude" :scale="mapConfig.scale" :latitude="mapConfig.latitude" :markers="mapConfig.markers"></map>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				// 地图配置
				mapConfig:{
					longitude:113.95305,
					latitude:22.566255,
					scale:13,
					markers:[
						{
							longitude:113.95305,
							latitude:22.566255,
							iconPath:'/static/logo.png',
							width:30,
							height:30
						}
						
					]
				}
			}
		},
		methods: {
			phone(){
				uni.makePhoneCall({
					phoneNumber:400-2344-5555
				})
			}
		}
	}
</script>

<style lang="scss" scoped>
.contact{
	.img{
		width:750rpx;
		height:320rpx;
	}
	.info-text{
		padding:10rpx 20rpx;
		.phone-text,.adress-text{
			line-height: 50rpx;
			border-bottom:1px solid #eee;
		}
	}
	.map-wrapper{
		width:750rpx;
		height:750rpx;
	}
}
</style>
