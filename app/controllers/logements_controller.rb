
class LogementsController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(current_user.id)
    @logement = @user.logements

  end


  def new
  	@logement = Logement.new
  end


  def show
  end

  
  def create
 
  	@logement = Logement.new(categorie: params[:categorie],types: params[:types],name: params[:name],user_id: current_user.id)
    @logement.save
    @logement.photos.attach(params[:photos])

    @adr = Adresse.new(pays: params[:pays],ville1: params[:adresse1],
           code: params[:code],ville: params[:ville],adresse2:params[:adresse2],logement_id: @logement.id)
    @adresse = @adr.save
    Carte.create(longitude:params[:longitude],latitude:params[:latitude],logement_id:@logement.id) 
 
  
    @a = Chambre.create(logement_id: @logement.id,title: params[:title])

    if params[:lit_ids]
      @lits = params[:lit_ids]
      @lits.each do |l,valeur|
        LitChambre.create(chambre_id: @a.id, lit_id: l, number: valeur)
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
        Departarrive.create(arrive: params[:arrive],arrive2: params[:arrive2], depart: params[:depart], depart2: params[:depart2])
    end
    if params[:condition]
      Condition.create(condition: params[:condition], logement_id: @logement.id) 
    end


    if params[:start_date] && params[:end_date]
      Reservation.create(start_date: params[:start_date],end_date: params[:end_date], logement_id: @logement.id)
      
    end
  

  if @adr.save
    redirect_to '/logements'
       
  end   
  end
end

