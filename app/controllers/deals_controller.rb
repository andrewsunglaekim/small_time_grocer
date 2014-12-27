class DealsController < ApplicationController
	def index
		@deals = Deal.all
	end

	def show
		@deal = Deal.find(params[:id])
	end

	def new
		@vendors = Vendor.all
		@items = Item.all
		@deal = Deal.new
	end

	def edit
		@items = Item.all
		@vendors = Vendor.all
		@deal = Deal.find(params[:id])
	end

	def create
		@items = Item.all
		@vendors = Vendor.all
		@deal = Deal.new(deal_params)
		if @deal.save
			redirect_to @deal
		else render 'new'
		end
	end

	def update
		@deal = Deal.find(params[:id])
		if @deal.update(deal_params)
			redirect_to @deal
		else 
			render 'edit'
		end
	end

	def destroy
		@deal = Deal.find(params[:id])
		@deal.destroy

		redirect_to deals_path
	end

	private
	def deal_params
		params.require(:deal).permit(:item_id, :vendor_id, :price)
	end

end
