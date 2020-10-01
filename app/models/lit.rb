class Lit < ApplicationRecord
	has_many :LitChambres
	has_many :chambres, through: :LitChambres
end
