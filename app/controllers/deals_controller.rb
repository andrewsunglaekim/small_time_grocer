class DealsController < ApplicationController
	def index
		@deals = Deal.all
	end

	def show
		@deal = Deal.find(params[:id])
	end

	def new
		@vendors = Vendor.all
		@vendors_options = []
		@items = Item.all
		@deal = Deal.new
	end

	def create
		@deal = Deal.new
		if @deal.save
			redirect_to @deal
		else render 'new'
		end
	end

	private
	def deal_params
		params.require(:deal).permit(:price)
	end

end
