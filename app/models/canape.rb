class Canape < ApplicationRecord
	has_many :saloncanapes
	has_many :salons ,through: :saloncanapes

end
