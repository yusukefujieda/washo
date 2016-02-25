class ReviewsController < ApplicationController
  def create
   @review = Review.create(user_id:current_user.id,shop_id:params[:shop_id],reviews:params[:reviews],rate:params[:rate])
  end

end
