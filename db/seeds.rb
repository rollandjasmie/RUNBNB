# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

a = User.create!(name:"Koto",first_name:"RAbe",email:"r@gmail.com",password:"r@gmail.com")
Logement.destroy_all
	b =Logement.create!(categorie:"ok",types: "appartement",name: "kevin", user: a)

Chambre.destroy_all
		Chambre.create!(title: "Chambre1", logement_id: b.id)
		Chambre.create!(title: "Salon", logement_id: b.id,)
		Chambre.create!(title: "Autre espace", logement_id: b.id,)

puts"creer"

Lit.destroy_all
		Lit.create!(title:"lit double",chambre_id: 1)
		Lit.create!(title:"lit simple",chambre_id: 1)
		Lit.create!(title:"lit king size",chambre_id: 1)
		Lit.create!(title:"lit grand size",chambre_id: 1)
		Lit.create!(title:"lit superposé",chambre_id: 1)
		Lit.create!(title:"canapé-lit",chambre_id: 1)
		Lit.create!(title:"canapé-lit double",chambre_id: 1)

		Lit.create!(title:"fluton",chambre_id: 2)
		Lit.create!(title:"lit double",chambre_id: 2)
		Lit.create!(title:"lit simple",chambre_id: 2)
		Lit.create!(title:"lit king size",chambre_id: 2)
		Lit.create!(title:"lit grand size",chambre_id: 2)
		Lit.create!(title:"lit superposé",chambre_id: 2)
		Lit.create!(title:"canapé-lit",chambre_id: 2)
		Lit.create!(title:"canapé-lit double",chambre_id: 2)
		Lit.create!(title:"fluton",chambre_id: 2)

		Lit.create!(title:"lit double",chambre_id: 3)
		Lit.create!(title:"lit simple",chambre_id: 3)
		Lit.create!(title:"lit king size",chambre_id: 3)
		Lit.create!(title:"lit grand size",chambre_id: 3)
		Lit.create!(title:"lit superposé",chambre_id: 3)
		Lit.create!(title:"canapé-lit",chambre_id: 3)
		Lit.create!(title:"canapé-lit double",chambre_id: 3)
		Lit.create!(title:"fluton",chambre_id: 3)

puts "lit"
