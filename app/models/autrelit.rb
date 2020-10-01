class Autrelit < ApplicationRecord
	has_many :litautres
	has_many :autre ,through: :litautres
end
