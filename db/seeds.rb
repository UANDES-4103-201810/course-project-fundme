# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name:"Technology")
Category.create(name: "House")

User.create(name:"Admin",last_name:"superuser",role:"admin",description:"This user can manage all the web application",email:"admin@user.com",password:"admin1234",password_confirmation:"admin1234",id:1)
User.create(name:"User",last_name:"Commonuser",role:"user",description:"This user can t manage all the web application",email:"user@user.com",password:"user1234",password_confirmation:"user1234",id:2)

Project.create(title:"EtherDog",video:"video",image_file_name:"axe.jpg",main_picture:"axe.jpg",goal_amount:40000,description:"Hola Max, este proyecto es para ti",marckdown:"This project is about a trash that generates biogas",days_to_go:10,status:true,category_id:1,user_id:2)
Project.create(title:"CleanMax",video:"video",image_file_name:"clean.jpg",main_picture:"clean.jpg",goal_amount:600000,description:" Este proyecto es el mejor de todos",marckdown:"This project is about a machine of candies",days_to_go:45,status:true,category_id:2,user_id:1)
Project.create(title:"Web",video:"video",image_file_name:"clean.jpg",main_picture:"clean.jpg",goal_amount:600000,description:"Este proyecto es como el loly",marckdown:"This project is abouth a machine for washing dishes",days_to_go:45,status:true,category_id:1,user_id:1)


PayMethod.create(card_number:"1234123412341234",name_in_card:"admin user",expiration_date:"2018-10-10" ,company:"Visa",user_id:1)
PayMethod.create(card_number:"5465454684846848",name_in_card:"user",expiration_date:"2018-10-12" ,company:"MasterCard",user_id:2)

Promise.create(amount:40, estimated_delivery_date:"2018-10-5",description:"Jacket",project_id:1)
Promise.create(amount:44, estimated_delivery_date:"2018-11-5",description:"Cup",project_id:1)

Promise.create(amount:40, estimated_delivery_date:"2018-10-5",description:"T shirt",project_id:2)
Promise.create(amount:44, estimated_delivery_date:"2018-11-5",description:"Cup",project_id:2)

Promise.create(amount:40, estimated_delivery_date:"2018-10-4",description:"T shirt",project_id:3)
Promise.create(amount:44, estimated_delivery_date:"2018-11-3",description:"Cup",project_id:3)

Wishlist.create(user_id:1)
Wishlist.create(user_id:2)

WishlistProject.create(wishlist_id:1,project_id:1)
WishlistProject.create(wishlist_id:1,project_id:2)
WishlistProject.create(wishlist_id:2,project_id:2)

Fund.create(amount:34,user_id:2,project_id:1,pay_method_id:1)

FundbyPromise.create(promise_id:1,project_id:1,user_id:2)













