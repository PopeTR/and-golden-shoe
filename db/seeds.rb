require "open-uri"

User.destroy_all
Brand.destroy_all
Product.destroy_all
ProductType.destroy_all
Colour.destroy_all
Size.destroy_all
Order.destroy_all
Category.destroy_all


# Brands
nike = Brand.create(name: 'Nike')
adidas = Brand.create(name: 'Adidas')
puma = Brand.create(name: 'Puma')
timberland = Brand.create(name: 'Timberland')
north_face = Brand.create(name: 'North Face')

# Categories
running = Category.create(name: 'Running')
casual = Category.create(name: 'Casual')
smart = Category.create(name: 'Smart')
other = Category.create(name: 'Other')

# Product Types
men = ProductType.create(name: 'men')
women = ProductType.create(name: 'women')

# Products
# Mens Products for Nike
air_max = Product.create(name: "Air Max", brand_id: nike.id, product_type_id: men.id, category_id: casual.id)
pegasus = Product.create(name: "Pegasus", brand_id: nike.id, product_type_id: men.id, category_id: casual.id)
react = Product.create(name: "React", brand_id: nike.id, product_type_id: men.id, category_id: casual.id)
drifter = Product.create(name: "Drifter", brand_id: nike.id, product_type_id: men.id, category_id: casual.id)
space_hippie = Product.create(name: "Space Hippie", brand_id: nike.id, product_type_id: men.id, category_id: casual.id)
challenger = Product.create(name: "Challenger", brand_id: nike.id, product_type_id: men.id, category_id: casual.id)
runner = Product.create(name: "Runner", brand_id: nike.id, product_type_id: men.id, category_id: running.id)

# Product Images
file = URI.open('https://images.unsplash.com/photo-1514989940723-e8e51635b782?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
air_max.images.attach(io: file, filename: 'airmaxactual.jpg', content_type: 'image/jpg')
air_max.save
file = URI.open('https://images.unsplash.com/photo-1514989771522-458c9b6c035a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
air_max.images.attach(io: file, filename: 'airmaxactual2.jpg', content_type: 'image/jpg')
air_max.save
# pegasus.images.attach(io: file, filename: 'pegasus.jpg', content_type: 'image/jpg')
# react.images.attach(io: file, filename: 'react.jpg', content_type: 'image/jpg')
# drifter.images.attach(io: file, filename: 'drifter.jpg', content_type: 'image/jpg')
# space_hippie.images.attach(io: file, filename: 'space_hippie.jpg', content_type: 'image/jpg')
# challenger.images.attach(io: file, filename: 'challenger.jpg', content_type: 'image/jpg')
# runner.images.attach(io: file, filename: 'runner.jpg', content_type: 'image/jpg')

# Colours
# Nike Air Max Colours
white = Colour.create(name: "White", product_id: air_max.id)
black = Colour.create(name: "Black", product_id: air_max.id)
red = Colour.create(name: "Red", product_id: air_max.id)
blue = Colour.create(name: "Blue", product_id: air_max.id)
green = Colour.create(name: "Green", product_id: air_max.id)
yellow = Colour.create(name: "Yellow", product_id: air_max.id)

# Sizes 
# Mens Sizes for Air Max Black
seven = Size.create(content: "7", number_in_stock: 10, colour_id: black.id)
eight = Size.create(content: "8", number_in_stock: 8, colour_id: black.id)
nine = Size.create(content: "9", number_in_stock: 6, colour_id: black.id)
ten = Size.create(content: "10", number_in_stock: 4, colour_id: black.id)
eleven = Size.create(content: "11", number_in_stock: 2, colour_id: black.id)
twelve = Size.create(content: "12", number_in_stock: 0, colour_id: black.id)

# Users 
user1 = User.create(first_name: 'Boris', last_name: 'Becker', email: 'boris@gmail.com', password: 'password', phone_number: '+447950213237', role: 'customer')
user2 = User.create(first_name: 'Tim', last_name: 'Henman', email: 'tim@gmail.com', password: 'password', phone_number: '+447950213237', role: 'customer')
user3 = User.create(first_name: 'Andy', last_name: 'Murray', email: 'andy@gmail.com', password: 'password', phone_number: '+447950213237', role: 'manager')
user4 = User.create(first_name: 'Martina', last_name: 'Navratalova', email: 'martina@gmail.com', password: 'password', phone_number: '+447950213237', role: 'customer')
user5 = User.create(first_name: 'Serena', last_name: 'Williams', email: 'serena@gmail.com', password: 'password', phone_number: '+447950213237', role: 'customer')

# Orders
order1 = Order.create(size_id: eleven.id, user_id: user1.id)


