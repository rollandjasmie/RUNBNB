
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

	Salon.destroy_all
		 s1 = Salon.create!(title: "Salon", logement_id: b.id)
	Autre.destroy_all
		 a1 = Autre.create!(title: "Autre espace", logement_id: b.id)

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
		Canape.destroy_all
				Canape.create!(title:"Canapé-lit",salon_id: s1.id)
				Canape.create!(title:"Canapé",salon_id: s1.id)
				
		Autrelit.destroy_all

				 Autrelit.create!(title:"Lit double",autre_id: a1.id)
				 Autrelit.create!(title:"Lit simple",autre_id: a1.id)
				 Autrelit.create!(title:"Lit king size",autre_id: a1.id)
				 Autrelit.create!(title:"Lit grand size",autre_id: a1.id)
				 Autrelit.create!(title:"Lit superposé",autre_id: a1.id)
				 Autrelit.create!(title:"Canapé-lit",autre_id: a1.id)
				 Autrelit.create!(title:"Canapé-lit double",autre_id: a1.id)
				 Autrelit.create!(title:"Futon",autre_id: a1.id)






puts "lit"



