class Salon < ApplicationRecord
	belongs_to :logement
	has_many :saloncanape
	has_many :canape ,through: :saloncanape
end
