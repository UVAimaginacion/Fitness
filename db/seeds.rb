# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
User.create(email: "admin1@gmail.com", password: "123456", rol: "admin", name: "admin1", lastname: "admin1")
User.create(email: "admin2@gmail.com", password: "123456", rol: "admin", name: "admin2", lastname: "admin2")
User.create(email: "admin3@gmail.com", password: "123456", rol: "admin", name: "admin3", lastname: "admin3")

