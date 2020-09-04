class Equipement < ApplicationRecord
	belongs_to :logement

	has_many :chambrequipements
	has_many :chambres, through: :chambrequipements
end
