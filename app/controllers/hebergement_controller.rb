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
  end

  def delete
  end
  def photo
    
  end
end
