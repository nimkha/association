# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

bob = User.create(user_name:"Bob", user_password:"abcd", user_email:"email@user.com", user_firstname:"Bobby", user_lastname:"Burger")
jonny = User.create(user_name:"Jonny", user_password:"abcd", user_email:"email@user.com", user_firstname:"Jay", user_lastname:"Say")
daniel = User.create(user_name:"Danny", user_password:"abcddsda", user_email:"email@user.com", user_firstname:"Daniel", user_lastname:"DayLou")
emma = User.create(user_name:"Emma", user_password:"abcdasd", user_email:"email@user.com", user_firstname:"Emily", user_lastname:"Dondadse")

junior = Group.create(group_name:"Junior")
senior = Group.create(group_name:"Senior")
developer = Group.create(group_name:"Developer")
oc = Group.create(group_name:"Operations")
shift = Group.create(group_name:"Shift")
leaders = Group.create(group_name:"Leaders")