class SalesController < ApplicationController

  def done
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
  #	byebug
	@sale = Sale.new(sale_params)
	@sale.save
    redirect_to sales_path
  end 

  private
  def sale_params
    params.require(:sale).permit(:cod, :category, :detail, :value, :discount, :tax, :total)
  end
end
