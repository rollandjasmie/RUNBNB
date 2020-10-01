class Autre < ApplicationRecord
	belongs_to :logement
	has_many :litautres
	has_many :autrelit, through: :litautres
end
