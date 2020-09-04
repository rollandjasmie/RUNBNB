class Regle < ApplicationRecord
	belongs_to :logement

	has_many :reglelogs
	has_many :logements, through: :reglelogs
end
