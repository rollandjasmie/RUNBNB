# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

a = User.create!(name:"Koto",first_name:"RAbe",email:"r@gmail.com",password:"r@gmail.com")
puts"zahhhhhhhhhh"

Logement.destroy_all
	b =Logement.create!(categorie:"ok",types: "appartement",name: "kevin", user: a)
	puts"logement"

Regle.destroy_all
		Regle.create!(title:"Hébergement fumeur")
		Regle.create!(title:"Animaux domestique admis")
		Regle.create!(title:"Enfant bienvenue")
		Regle.create!(title:"Fêtes/événements autorisés")
		puts"regle"

Equipement.destroy_all
 	   Equipement.create!(title:"Bar",logement_id: b.id)
 	   Equipement.create!(title:"Saune",logement_id: b.id)
 	   Equipement.create!(title:"Jardin",logement_id: b.id)
 	   Equipement.create!(title:"Terrasse",logement_id: b.id)
 	   Equipement.create!(title:"Bain à remous/jacuzzi",logement_id: b.id)
 	   Equipement.create!(title:"Connexion WIFI gratuite",logement_id: b.id)
 	   Equipement.create!(title:"Climatisation",logement_id: b.id)
 	   Equipement.create!(title:"Plage",logement_id: b.id)
 	   Equipement.create!(title:"Borne de recharge pour voiture électrique",logement_id: b.id)
 	   Equipement.create!(title:"Piscine",logement_id: b.id)
 	   Equipement.create!(title:"Parking",logement_id: b.id)
puts "create eq"
	Chambre.destroy_all
		 c1 = Chambre.create!(title: "Chambre1", logement_id: b.id)
		 c2 = Chambre.create!(title: "salon", logement_id: b.id)
		 c3 = Chambre.create!(title: "autres espaces", logement_id: b.id)

puts"creer"

		Lit.destroy_all
				Lit.create!(title:"Lit double",chambre_id: c1.id)
				Lit.create!(title:"Lit simple",chambre_id: c1.id) 
				Lit.create!(title:"Lit king size",chambre_id: c1.id)
				Lit.create!(title:"Lit grand size",chambre_id: c1.id)
				Lit.create!(title:"Lit superposé",chambre_id: c1.id)
				Lit.create!(title:"Canapé-lit",chambre_id: c1.id)
				Lit.create!(title:"Canapé-lit double",chambre_id: c1.id)
				Lit.create!(title:"Futon",chambre_id: c1.id)

				Lit.create!(title:"Canapé-lit",chambre_id: c2.id)
				Lit.create!(title:"Canapé",chambre_id: c2.id)

				Lit.create!(title:"Lit double",chambre_id: c3.id)
				Lit.create!(title:"Lit simple",chambre_id: c3.id)
				Lit.create!(title:"Lit king size",chambre_id: c3.id)
				Lit.create!(title:"Lit grand size",chambre_id: c3.id)
				Lit.create!(title:"Lit superposé",chambre_id: c3.id)
				Lit.create!(title:"Canapé-lit",chambre_id: c3.id)
				Lit.create!(title:"Canapé-lit double",chambre_id: c3.id)
				Lit.create!(title:"Futon",chambre_id: c3.id)






puts "lit"







