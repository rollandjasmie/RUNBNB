# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
# Logement.destroy_all
# Information.destroy_all
# info1 = ['Lit double', 'Lit simple','Lit king-size','Grand-lit king-size','Lit superposé','Canapé lit']
# loge = ["Appartement","Maison/Vila","Bangalow/Châlet","Hotel","chambre d'hote/Gite"]


User.create(name:"Michelle",first_name:"Verdi",email:"r@gmail.com",password:"r@gmail.com")

# #Longement
# Logement.create(categorie:"Appartement",types:"Privé",user_id:1)
# Logement.create(categorie:"Maison/Vila",types:"Privé",user_id:1)
# Logement.create(categorie:"Bangalow/Châlet",types:"Privé",user_id:1)
# Logement.create(categorie:"Hotel",types:"Privé",user_id:1)
# Logement.create(categorie:"chambre d'hote/Gite",types:"Privé",user_id:1)

# #Information
# Information.create(chambre1:"Lit double",logement_id:1)
# Information.create(chambre1:"Lit simple",logement_id:1)
# Information.create(chambre1:"Lit king-size",logement_id:1)
# Information.create(chambre1:"Grand-lit king-size",logement_id:1)
# Information.create(chambre1:"Lit superposé",logement_id:1)
# Information.create(chambre1:"Canapé li",logement_id:1)


 
