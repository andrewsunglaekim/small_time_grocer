class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy]

 

  def index
    @purchases = Purchase.all

  end

  def show
 
  end

  def new
    @purchase = Purchase.new

  end

  def edit
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.save

  end

  def update
    @purchase.update(purchase_params)

  end

  def destroy
    @purchase.destroy

  end

  private
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    def purchase_params
      params.require(:purchase).permit(:deal_id, :user_id, :total_purchases)
    end
end
