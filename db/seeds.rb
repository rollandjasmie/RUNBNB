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
		Regle.create!(title:"Hébergement fumeur",depart:"",arrive:"",logement_id: b.id)
		Regle.create!(title:"Animaux domestique admis",depart:"",arrive:"",logement_id: b.id)
		Regle.create!(title:"Enfant bienvenue",depart:"",arrive:"",logement_id: b.id)
		Regle.create!(title:"Fêtes/événements autorisés",depart:"",arrive:"",logement_id: b.id)
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
		c = Chambre.create!(title: "Chambre1", logement_id: b.id)
		f = Chambre.create!(title: "Salon", logement_id: b.id,)
		g = Chambre.create!(title: "Autre espace", logement_id: b.id,)

puts"creer"

Lit.destroy_all
		Lit.create!(title:"lit double",chambre_id: c.id)
		Lit.create!(title:"lit simple",chambre_id: c.id)
		Lit.create!(title:"lit king size",chambre_id: c.id)
		Lit.create!(title:"lit grand size",chambre_id: c.id)
		Lit.create!(title:"lit superposé",chambre_id: c.id)
		Lit.create!(title:"canapé-lit",chambre_id: c.id)
		Lit.create!(title:"canapé-lit double",chambre_id: c.id)
		Lit.create!(title:"futon",chambre_id: c.id)

		Lit.create!(title:"lit double",chambre_id: f.id)
		Lit.create!(title:"lit simple",chambre_id: f.id)
		Lit.create!(title:"lit king size",chambre_id: f.id)
		Lit.create!(title:"lit grand size",chambre_id: f.id)
		Lit.create!(title:"lit superposé",chambre_id: f.id)
		Lit.create!(title:"canapé-lit",chambre_id: f.id)
		Lit.create!(title:"canapé-lit double",chambre_id: f.id)
		Lit.create!(title:"futon",chambre_id: f.id)

		Lit.create!(title:"lit double",chambre_id: g.id)
		Lit.create!(title:"lit simple",chambre_id: g.id)
		Lit.create!(title:"lit king size",chambre_id: g.id)
		Lit.create!(title:"lit grand size",chambre_id: g.id)
		Lit.create!(title:"lit superposé",chambre_id: g.id)
		Lit.create!(title:"canapé-lit",chambre_id: g.id)
		Lit.create!(title:"canapé-lit double",chambre_id: g.id)
		Lit.create!(title:"futon",chambre_id: g.id)

puts "lit"
