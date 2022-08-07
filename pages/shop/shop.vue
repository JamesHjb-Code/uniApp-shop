<template>
	<view class="shop">
		<shop-list :shopList="shopList"></shop-list>
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
				shopList:[],
				currentPage:1,
			}
		},
		onLoad() {
			this.getShopList()
		},
		methods: {
			// 获取商品列表数据
			async getShopList(){
				const params = {
					page:this.currentPage,
					count:10
				}
				const res = await this.$myRequest({
					url:'/home/hotshop',
					data:params
				})
				if(res.data.success){
					this.shopList = res.data.result
				}else{
					this.shopList = []
				}
			}
		}
	}
</script>

<style lang="scss" scoped> 
.shop{
	background: #e5e5e5;
}
</style>
