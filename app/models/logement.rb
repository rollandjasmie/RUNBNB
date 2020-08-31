class Logement < ApplicationRecord
	belongs_to :user
	has_many :adresses
	
end
