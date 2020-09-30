class HebergementController < ApplicationController
  def index
  end

  def show
    @logement = Logement.find(params[:logement_id])
  end

  def create
  end

  def update

  end

  def edit
      @logement = Logement.find(params[:id])
     if @logement.update(categorie: params[:categorie],types: params[:types],
        name: params[:name],user_id: current_user.id)
     end
  end

  def delete
  end
end
