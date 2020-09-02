class LogementsController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def new
  	@logement = Logement.new
  end

  def create
  	param = params.permit(:categorie,:types,:name)
    @logement = Logement.new(param)

    @logement.user_id = current_user.id
    @logement= @logement.save

    @adr = Adresse.new(pays: params[:pays],adresse: params[:adresse],
           code: params[:code],ville: params[:ville],logement_id: @logement)
    @adresse = @adr.save 

    if params[:chambre_ids]
      @chambre = params[:chambre_ids]
      @chambre.each do |c|
        Chambre.create(logement_id: @logement,lit_id: c.to_i)
      end 
    end

  if @adr.save
    redirect_to '/'
       
  end   
  end
end

