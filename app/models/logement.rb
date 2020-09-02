class Logement < ApplicationRecord
	belongs_to :user
    
	has_many :adresses
	has_many :chambres
end
	
