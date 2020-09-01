class AdressesController < ApplicationController
  def show
  end

  def new
  	@adresse = Adresse.new
  end

  def create
  	param = params.require(:adresse).permit(:pays,:adresse,:code,:ville)
  	@adresse = Adresse.new(param)
  	@adresse.logement_id = params[:logement_id]
  	@logement_id = @adresse.logement_id
  	if @adresse.save
  		redirect_to "/"#new_logement_information_path(@logement_id)
  	end
  end

  def update
  end
end
