class LogementsController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def new
  	@logement = Logement.new
  end

  def create
  	@logement = Logement.new(categorie: params[:categorie],types: params[:types],name: params[:name],user_id: current_user.id)
    @logement.save
    @logement.photos.attach(params[:photos])

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
    if params[:regle_ids]
      @equipement = params[:regle_ids]
      @equipement.each do |e|
        Reglelog.create(logement_id: @logement.id, regle_id: e.to_i)
      end 
    end  
    if params[:arrive] && params[:depart]
        Regle.create(arrive: params[:arrive], depart: params[:depart],logement_id: @logement.id)
    end
    if params[:condition]
      Condition.create(condition: params[:condition], logement_id: @logement.id) 
    end
  

  if @adr.save
    redirect_to '/'
       
  end   
  end
end

