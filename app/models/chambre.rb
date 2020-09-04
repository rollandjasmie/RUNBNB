class Chambre < ApplicationRecord
	belongs_to :logement

	has_many :chambrequipements
	has_many :equipements, through: :chambrequipements

	has_many :lit
end
