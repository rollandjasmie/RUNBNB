class LogementsController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def new
  	@logement = Logement.new
  end

  def create
  	@logement = Logement.create(categorie: params[:categorie],types: params[:types],name: params[:name],user_id: current_user.id)
    @logement.save

    @adr = Adresse.create(pays: params[:pays],adresse: params[:adresse],
           code: params[:code],ville: params[:ville],logement_id: @logement.id)
    @adresse = @adr.save 

    if params[:chambre_ids]
      @chambre = params[:chambre_ids]
      @chambre.each do |c|
          @a = Chambre.create(logement_id: @logement.id,lit_id: c.to_i)

      end 
    end
    if params[:equipement_ids]
      @equipement = params[:equipement_ids]
      @equipement.each do |e|
        Chambrequipement.create(chambre_id: @a.id, equipement_id: e.to_i)
      end    
    end

  if @adr.save
    redirect_to '/'
       
  end   
  end
end

