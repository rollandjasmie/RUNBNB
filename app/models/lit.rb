class Lit < ApplicationRecord
	belongs_to :chambre

	has_many :LitChambres
	has_many :chambres, through: :LitChambres
end
