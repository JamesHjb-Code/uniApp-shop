
<template>
	<view class="shop">
		<shop-list @goShopDetail="goShopDetail" :shopList="shopList"></shop-list>
		<view class="bottom-text" v-if="isBottom"><text>{{bottomText}}</text></view>
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
				shopList:[], // 商品列表
				currentPage:1, //默认分页为1
				isBottom:false, //是否下拉
				bottomText:'Have been to'
			}
		},
		onLoad() {
			this.getShopList()
		},
		onReachBottom(){
			// 上拉触底
			if(this.shopList.length < this.currentPage*10) return this.isBottom = true
			this.currentPage++
			this.getShopList()
		},
		onPullDownRefresh() {
			// 下拉刷新
			this.currentPage = 1
			this.shopList = []
			this.isBottom = false
			setTimeout(()=>{
				this.getShopList(()=>{
					uni.stopPullDownRefresh()
				})
			},1500)
		},
		methods: {
			// 渲染商品列表
			async getShopList(callBack){
				const params = {
					page:this.currentPage,
					count:10
				}
				const res = await this.$myRequest({
					url:'/home/hotshop',
					data:params
				})
				if(res.data.success){
					this.shopList=[...this.shopList,...res.data.result]
				}else{
					this.shopList = []
				}
				callBack && callBack()
			},
			// 跳转到导航详情
			goShopDetail(id){
				uni.navigateTo({
					url:'/pages/shop-detail/shop-detail?id='+id
				})
			}
		}
	}
</script>

<style lang="scss" scoped> 
.shop{
	background: #e5e5e5;
	.bottom-text{
		width:100vw;
		height:50rpx;
		padding:10rpx 0;
		text-align: center;
	}
}
</style>
