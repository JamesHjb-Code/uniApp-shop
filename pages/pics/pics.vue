<template>
	<view class="pics">
		<scroll-view class="menu-left" scroll-y>
			<view :class="{active:currentActive === index}" class="navigation-item" v-for="(item,index) in navigatorList" :key="item.id" @click="handleCurrent(index,item.father_id)">{{item.title}}</view>
		</scroll-view>
		<scroll-view class="menu-right" scroll-y>
			<view class="item" v-for="item in detailList" :key="item.id">
				<image class="pics-img" :src="item.img"></image>
				<text class="pics-text">{{item.text}}</text>
			</view>
			<view class="nodata-text"><text v-if="detailList.length === 0" >暂无数据</text></view>
		</scroll-view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				navigatorList:[], //导航列表
				detailList:[], //详情内容列表
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
					const currentIndex = 0 //初始化时默认为第一个的列表
					this.handleCurrent(currentIndex,this.navigatorList[currentIndex].father_id)
				}else{
					this.navigatorList = []
				}
			},
			async handleCurrent(index,id){
				this.currentActive = index
				const params = {
					id:id
				}
				const res = await this.$myRequest({
					url:'/pics/commundetail',
					data:params
				})
				if(res.data.success){
					this.detailList = res.data.result
				}else{
					this.detailList = []
				}
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
		.nodata-text{
			width: 100%;
			padding:20rpx 0;
			text-align: center;
		}
	}
}
</style>
