class PhotosController < ApplicationController
	
	def index
		@photo = Logement.find(params[:logement_id])

  	end
  	def show
  		
  	end
  	
  	def create
  		@user = Logement.find(params[:logement_id])
		@user.photos.attach(params[:photos])
  	end

	def update
	end

	def edit
	end

	def delete
	end

	def photo
	end

end
