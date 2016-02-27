class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def search
    @shops = Shop.where('name LIKE ?', "%#{params[:keyword]}%")
  end

  def show
    @shop = Shop.find(params[:id])
    @review = Review.new
  end
end
