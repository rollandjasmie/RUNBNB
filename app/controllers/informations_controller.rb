class InformationsController < ApplicationController
  def new
  	@info = Information.new
  	# @info1 = ['Lit double', 'Lit simple','Lit king-size','Grand-lit king-size','Lit superposé','Canapé lit']
  	@info1 = Information.all
  end

  def create
  	@zone_ids = params[:zone_ids]
                @zone_ids.each do |z|
                  Information.create(logement_id:params[:logement_id], zone_id: z.to_i)
              end
  	
  end

  def edit
  end

  def update
  end
end
