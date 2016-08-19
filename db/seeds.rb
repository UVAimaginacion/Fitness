# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
User.create(email: "m@gmail.com",  password: "123456789", rol: "admin" )
User.create(email: "admin@gmail.com", password: "123456789", rol: "admin" )

