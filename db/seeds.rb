# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#clear database
City.destroy_all

cities = City.create([


	{ id: 1, name: 'Gulltown', image_url: 'http://awoiaf.westeros.org/images/thumb/8/8d/TN-The_Vale_of_Arryn.jpg/800px-TN-The_Vale_of_Arryn.jpg', sigil_image: 'House-Arryn-Main-Shield.png'},
	{ id: 2, name: 'Volantis', image_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/8/8d/Volantis_5x03_(1).jpg/revision/latest?cb=20150427111331', sigil_image: 'no-clan-logo.png'},
	{ id: 3, name: 'Meereen', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/8/89/Meereen.png/revision/latest?cb=20150328211743', sigil_image: 'no-clan-logo.png'},
	{ id: 4, name: 'Oldtown', image_url: 'http://vignette2.wikia.nocookie.net/iceandfire/images/c/cc/Oldtown-Game-of-Thrones.jpeg/revision/latest?cb=20120619213250', sigil_image: 'House-Martell-Main-Shield.png'},
	{ id: 5, name: 'Kings Landing', image_url: 'http://vignette3.wikia.nocookie.net/gameofthrones/images/4/43/GreatSeptExteriors.jpg/revision/latest?cb=20150321161915', sigil_image: 'House-Lannister-Main-Shield.png'},
	{ id: 6, name: 'Qarth', image_url: 'http://awoiaf.westeros.org/images/thumb/a/ab/Qarth_HBO.jpg/638px-Qarth_HBO.jpg', sigil_image: 'no-clan-logo.png'},
	{ id: 7, name: 'Braavos', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/7/7b/Titan_of_Braavos.jpg/revision/latest/scale-to-width-down/1000?cb=20150504024857', sigil_image: 'no-clan-logo.png'},
	{ id: 8, name: 'White Harbor', image_url: 'http://vignette3.wikia.nocookie.net/gotrp/images/7/79/White_harbor.jpg/revision/latest?cb=20140914155614', sigil_image: 'no-clan-logo.png'},
	{ id: 9, name: 'Lannisport', image_url: 'http://static.planetminecraft.com/files/resource_media/screenshot/1227/lannisport_0001_2783518.jpg', sigil_image: 'no-clan-logo.png'},
	{ id: 10, name: 'Astapor', image_url: 'http://vignette1.wikia.nocookie.net/ironthronerp/images/a/a3/Astapor.png/revision/latest?cb=20151023174622', sigil_image: 'no-clan-logo.png'},
	{ id: 11, name: 'Yunkai', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/5/50/Yunkai.png/revision/latest?cb=20150328212211', sigil_image: 'no-clan-logo.png'},
	{ id: 12, name: 'Qohor', image_url: 'http://fandomania.com/wp-content/uploads/2011/05/06/Games-of-Thrones-1.03-1.jpg'},
	{ id: 13, name: 'Storms End', image_url: 'http://awoiaf.westeros.org/images/8/8f/Storm_s_end_by_feliche.jpg'},
	{ id: 14, name: 'Riverrun', image_url: 'http://awoiaf.westeros.org/images/e/e5/Jedruszek_Riverrun.jpg'},
	{ id: 15, name: 'Pyke', image_url: 'http://awoiaf.westeros.org/images/8/8f/Storm_s_end_by_feliche.jpg'},
	{ id: 16, name: 'Sunspear', image_url: 'http://awoiaf.westeros.org/images/e/e5/Jedruszek_Riverrun.jpg'}])
