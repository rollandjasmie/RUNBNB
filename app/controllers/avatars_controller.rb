class AvatarsController < ApplicationController
  def create
  	@user = User.find(current_user.id)
  	puts "========================================="
  	  	puts @user.id
  	puts "=========================================="
    @user.avatar.attach(params[:avatar])
	redirect_to(user_path(@user))
  end
end
