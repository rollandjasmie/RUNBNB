class Logement < ApplicationRecord
	belongs_to :user

    has_many :condition

    has_many :reglelogs
    has_many :regles, through: :reglelogs

    has_many :reservations

    has_many :equipements
	has_many :adresses
	has_many :chambres
    has_many :salons
    has_many :autres
    has_many_attached :photos, dependent: :destroy

end
	
