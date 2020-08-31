# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Logement.destroy_all
info1 = ['Lit double', 'Lit simple','Lit king-size','Grand-lit king-size','Lit superposé','Canapé lit']
loge = ["Appartement","Maison/Vila","Bangalow/Châlet","Hotel","chambre d'hote/Gite"]


User.create(name:"Michelle",first_name:"Verdi",email:"r@gmail.com",password:"r@gmail.com")

# Logement.create(categorie:"Appartement",types:"",user_id:1)
# Logement.create(categorie:"",types:"",user_id:1)
# Logement.create(categorie:"",types:"",user_id:1)
# Logement.create(categorie:"",types:"",user_id:1)
# Logement.create(categorie:"",types:"",user_id:1)
# Information.create(chambre1:"",logement_id:)

 
