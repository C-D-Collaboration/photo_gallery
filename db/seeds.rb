# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Landscape Images:
landscape1 = Photo.create!(title: "Beautiful Mountains", description: "Look at dem mountains", genre: "landscape", url: 'https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683__340.png')
landscape2 = Photo.create!(title: "Calming Mountain Lake", description: "Look at dat lake", genre: "landscape", url: 'https://image.shutterstock.com/image-photo/mountain-landscape-lake-range-large-260nw-1017466240.jpg')
landscape3 = Photo.create!(title: "Peaceful Forest", description: "Look at dem trees", genre: "landscape", url: 'https://149366112.v2.pressablecdn.com/wp-content/uploads/2019/03/shutterstock_1693785667-scaled.jpg')

#Space Images:
space1 = Photo.create!(title: "Galaxy", description: "Look at dat spiral galaxy", genre: "space", url: 'https://cdn.wccftech.com/wp-content/uploads/2016/09/spacee-2060x1288.jpg')
space2 = Photo.create!(title: "Moon", description: "Look at dem craters (and the man)", genre: "space", url: 'https://photographylife.com/wp-content/uploads/2019/07/Waning-Gibbous-Moon.jpg')
space3 = Photo.create!(title: "Milky Way", description: "Look at dat milk", genre: "space", url: 'https://photographylife.com/wp-content/uploads/2012/02/Milky-Way-by-Nasim-Mansurov.jpg')

#People Images:
people1 = Photo.create!(title: "Beautiful young girl", description: "Look at dem eyes", genre: "people", url: 'https://mymodernmet.com/wp/wp-content/uploads/2018/10/Mou-Aysha-portrait-photography-3.jpg')
people2 = Photo.create!(title: "Tree Overlay", description: "Look at dem trees", genre: "people", url: 'https://www.lookslikefilm.com/wp-content/uploads/2019/02/Kate-Whyte.jpg')
people3 = Photo.create!(title: "Little Girl in the Rain", description: "Look at dem rain drops", genre: "people", url: 'https://iso.500px.com/wp-content/uploads/2015/01/sam1_cover-1500x1000.jpg')

#Sunset Images:
sunset1 = Photo.create!(title: "Ocean Sunset", description: "Look at dat surf", genre: "sunset", url: 'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2015/01/6198521760_aa86027669_z.jpg')
sunset2 = Photo.create!(title: "Curling Wave Sunset", description: "Look at dat wave", genre: "sunset", url: 'https://naldzgraphics.net/wp-content/uploads/2014/08/8-ohau-wave-wallpapers.jpg')
sunset3 = Photo.create!(title: "Smokey Mountain Sunset", description: "Listen to dem banjos", genre: "sunset", url: 'https://www.visitmysmokies.com/wp-content/uploads/2019/06/sunset-in-the-smoky-mountains.jpg')

#Animal Images (to be added):
# animal1 = Photo.create!(title: "Cute lil sloth", description: "Look at my speed", genre: "animal", url: 'https://ichef.bbci.co.uk/images/ic/1040x1040/p03t268b.jpg')
