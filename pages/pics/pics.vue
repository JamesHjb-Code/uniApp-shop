<template>
	<view class="pics">
		<scroll-view class="menu-left" scroll-y>
			<view :class="{active:currentActive === index}" class="navigation-item" v-for="(item,index) in navigatorList" :key="item.id" @click="handleCurrent(index)">{{item.title}}</view>
		</scroll-view>
		<scroll-view class="menu-right" scroll-y>
			<view class="item">
				<image class="pics-img" src="/static/pics/home/houseHome.jpg"></image>
				<text class="pics-text">沙堆请问请问请问请问请问请问请问请问请问去请问请问请问去</text>
			</view>
		</scroll-view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				navigatorList:[],
				currentActive:0
			}
		},
		onLoad(){
			this.getNavigatorList()
		},
		methods: {
			// 获取导航列表数据
			async getNavigatorList(){
				const res = await this.$myRequest({
					url:'/pics/navigator'
				})
				if(res.data.success){
					this.navigatorList = res.data.result
				}else{
					this.navigatorList = []
				}
			},
			handleCurrent(index){
				this.currentActive = index
			}
		}
	}
</script>

<style lang="scss" scoped>
page{
	height: 100%;
}
.pics{
	height:100%;
	display: flex;
	.menu-left{
		width:200rpx;
		height:100%;
		border-right:1px solid #eee;
		
		.navigation-item{
			height:120rpx;
			line-height:120rpx;
			color:#333;
			text-align: center;
			font-size:30rpx;
			border-top:1px solid #eee;
			&.active{
				background-color: $shop-color;
				color:#fff;
			}
		}
	}
	.menu-right{
		width:530rpx;
		height:100%;
		margin:10rpx auto;
		.item{
			
			.pics-img{
				width:530rpx;
				height:400rpx;
				border-radius: 10px;
			}
			.pics-text{
				font-size:30rpx;
				line-height: 60rpx;
			}
		}
	}
}
</style>
