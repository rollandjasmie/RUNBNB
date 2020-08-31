class InformationsController < ApplicationController
  def new
  	@info = Information.new
  	@info1 = ['Lit double', 'Lit simple','Lit king-size','Grand-lit king-size','Lit superposé','Canapé lit']
  end

  def create
  	
  end

  def edit
  end

  def update
  end
end
