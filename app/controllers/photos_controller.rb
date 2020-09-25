class PhotosController < ApplicationController
  def create
  	@user = Logement.find(params[:logement_id])


    @user.photos.attach(params[:photos])
	
  end
end
