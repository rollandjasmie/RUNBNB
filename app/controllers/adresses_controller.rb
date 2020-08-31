class AdressesController < ApplicationController
  def show
  end

  def new
  	@adresse = Adresse.new
  end

  def create
  	param = params.require(:adresse).permit(:pays,:adresse,:code,:ville)
  	@adresse = Adresse.new(adresse:params[:adresse],pays:params[:pays],code:params[:code],ville:params[:ville],logement_id:params[:logement_id])
  	# @adresse = params[:logement_id]
  	puts "=============================================="
  	 @l = Logement.find(params[:logement_id])
  	 puts @l
  	puts "==============================================="
  	if @adresse.save
  		redirect_to '/'
  	end
  end

  def update
  end
end
