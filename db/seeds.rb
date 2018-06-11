# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
Project.create(title:"EtherDog",video:"video",image_file_name:"axe.jpg",main_picture:"axe.jpg",goal_amount:40000,category:"Social",description:"Lorem ipsum dolor sit amet,consectetur adipiscing elit. Proin ac tellus ullamcorper, aliquam felis at, cursus nisi. Pellentesque in arcu nec lectus vehicula tincidunt. Ut interdum ornare elementum. Nulla hendrerit condimentum mauris sit amet eleifend. Sed sed est egestas quam elementum dictum sit amet in tortor.Praesent et accumsan nulla. Nam vehicula faucibus rhoncus. Etiam euismod ac mauris ut convallis. Sed feugiat ex elit, in rutrum orci convallis sit amet. Vivamus mattis nibh gravida, consectetur libero vel, interdum justo. Integer at ornare elit. Aliquam nec convallis justo. Cras metus ligula, mattis in blandit at, sodales nec lacus. Quisque accumsan ac dui et consectetur.Aenean ac laoreet ante. Morbi felis arcu, tempor a convallis nec, interdum ut arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eget cursus quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Nulla posuere mollis tellus, eget porttitor nisi. Nullam eget ipsum pharetra, egestas felis sit amet, dictum metus. Nulla facilisi.Morbi ligula ante, commodo eu metus et, porttitor accumsan dui. Vestibulum sodales nec ipsum sed efficitur. Aenean pharetra dignissim sollicitudin.Curabitur auctor leo porta laoreet luctus. Morbi et massa et sapien luctus ultricies sed et ligula. Pellentesque imperdiet dapibus nisl.",marckdown:"This project is abouth a trash that generates biogas",days_to_go:10,status:true)
Project.create(title:"CleanMax",video:"video",image_file_name:"clean.jpg",main_picture:"clean.jpg",goal_amount:600000,category:"Home",description:"Lorem ipsum dolor sit amet,consectetur adipiscing elit. Proin ac tellus ullamcorper, aliquam felis at, cursus nisi. Pellentesque in arcu nec lectus vehicula tincidunt. Ut interdum ornare elementum. Nulla hendrerit condimentum mauris sit amet eleifend. Sed sed est egestas quam elementum dictum sit amet in tortor.Praesent et accumsan nulla. Nam vehicula faucibus rhoncus. Etiam euismod ac mauris ut convallis. Sed feugiat ex elit, in rutrum orci convallis sit amet. Vivamus mattis nibh gravida, consectetur libero vel, interdum justo. Integer at ornare elit. Aliquam nec convallis justo. Cras metus ligula, mattis in blandit at, sodales nec lacus. Quisque accumsan ac dui et consectetur.Aenean ac laoreet ante. Morbi felis arcu, tempor a convallis nec, interdum ut arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eget cursus quam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Nulla posuere mollis tellus, eget porttitor nisi. Nullam eget ipsum pharetra, egestas felis sit amet, dictum metus. Nulla facilisi.Morbi ligula ante, commodo eu metus et, porttitor accumsan dui. Vestibulum sodales nec ipsum sed efficitur. Aenean pharetra dignissim sollicitudin.Curabitur auctor leo porta laoreet luctus. Morbi et massa et sapien luctus ultricies sed et ligula. Pellentesque imperdiet dapibus nisl.",marckdown:"This project is abouth a machine for washing dishes",days_to_go:45,status:true)
=end

User.create(name:"Admin",last_name:"superuser",image:"admin.jpg",role:"admin",description:"This user can manage all the web application",email:"admin@user.com",password:"admin1234",password_confirmation:"admin1234")
User.create(name:"User",last_name:"Commonuser",image:"user.png",role:"user",description:"This user can t manage all the web application",email:"user@user.com",password:"user1234",password_confirmation:"user1234")

=begin
PayMethod.create(card_number:"1234123412341234",name_in_card:"admin user",expiration_date:"2018-10-10" ,company:"Visa")
PayMethod.create(card_number:"5465454684846848",name_in_card:"User ssssss",expiration_date:"2018-10-12" ,company:"MasterCard")
=end











