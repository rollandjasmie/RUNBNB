class UsersController < ApplicationController
	def index
		
	end
  	
  	def show
  		if user_signed_in?
  			@user = User.find(current_user.id)
  		end
  	end
  	def update
  		@user = User.find(params[:id])
  		
  		@user.update(user_params)
  		redirect_to user_path(params[:id])
  	# 	respond_to do |format|
			# format.html { redirect_to books_path }
			# format.js { }
  	# 	 end
#   		document.getElementById("book-list").insertAdjacentHTML("beforeend", "<%= j
# render 'book', book: @book %>")
  	end
  	




  	private
  	
  	def user_params
  		params.require(:user).permit(
      		:name,
      		:first_name
      		)
  	end
end
