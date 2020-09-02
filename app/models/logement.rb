class Logement < ApplicationRecord
	belongs_to :user
    
    has_many :equipements
	has_many :adresses
	has_many :chambres
end
	
