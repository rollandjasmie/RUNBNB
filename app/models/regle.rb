class Regle < ApplicationRecord

	has_many :reglelogs
	has_many :logements, through: :reglelogs
end
