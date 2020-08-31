class LogementsController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def new
  	@logement = Logement.new
  end

  def create
  	param = params.require(:logement).permit(:categorie,:types,:name)
    @logement = Logement.new(param)

    @logement.user_id = current_user.id
    if @logement.save
      redirect_to new_logement_adress_path(@logement.id)
    end

  end

  def edit
    @logement = Logement.find(params[:id])
  end
  def update
    @logement = logement.find(params[:id])
    if @logement.update(params[:categorie],params[:types],params[:name])
        redirect_to new_logement_adress_path   
    end
  end
end
