
class UsersController < ApplicationController
	def index
		
	end
  	
  	def show
  		if user_signed_in?
  			@user = User.find(current_user.id)
        @date = @user.created_at
        @date = @date.to_s       
        @date = @date[0..3]
        @log = @user.logements.last
  		end
  	end
  	def update
  		@user = User.find(params[:id])
  		
  		@user.update(user_params)
  		redirect_to user_path(params[:id])
  	end
  	




  	private
  	
  	def user_params
  		params.require(:user).permit(
      		:name,
      		:first_name,
          :sexe,
          :date_of_birth,
          :email,
          :mobile,
          :adresse,
          :urgence
      		)
  	end
end

