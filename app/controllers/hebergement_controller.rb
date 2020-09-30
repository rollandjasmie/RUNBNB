class HebergementController < ApplicationController
  def index
  end

  def show
    @photo = Logement.find(params[:logement_id])
    




    puts "*"*500
      puts @photo.id
    puts "*"*500

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
