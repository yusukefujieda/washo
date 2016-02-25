class GuidesController < ApplicationController
  def create
     redirect_to :back
     Guide.create(user_id: current_user.id, shop_id: params[:shop_id], category: params[:category])
  end
end
