# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Order.create(product_id: 2, customer_id: 3, dateOrdered: '2013/November/06')
Order.create(product_id: 8, customer_id: 1, dateOrdered: '2013/November/06')
Order.create(product_id: 3, customer_id: 1, dateOrdered: '2013/November/06')


Store.create(address:'15 Malbrough Lane)', county: 'Cork' , phoneNumber:'014896325')
Store.create(address:'16 Lads Lane)', county: 'Meath' , phoneNumber:'019874521')

Product.create(details: 'Batman Archam City' , age: 15 , developer: 'warner.jpg', price: 65 , trailer: '<iframe width="560" height="315" src="//www.youtube.com/embed/-V1ZF5cNYCs" frameborder="0" allowfullscreen></iframe>', store_id: 2)
Product.create(details: 'Borderlands 2' , age: 16 , developer: '2k.jpg', price: 55 , trailer: '<iframe width="560" height="315" src="//www.youtube.com/embed/VW7qO_wpfvk" frameborder="0" allowfullscreen></iframe>', store_id: 3)

Customer.create(name:'testy test', address: '15 townsfolk' ,emailAddress:'testy@hotmail.com',password:'7777', password_confirmation:'7777',  phoneNumber:'015449849')
Customer.create(name:'Conroy', address: '21 folkstreet' ,emailAddress:'folks@hotmail.com',password:'7777', password_confirmation:'7777',  phoneNumber:'01464456')