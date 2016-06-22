# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



cities = City.create([
	{ name: 'Asshai', image_url: 'https://s-media-cache-ak0.pinimg.com/736x/1b/37/7e/1b377e5d9b34a4d8d5cd910f846f0862.jpg'}, 
	{ name: 'Volantis', image_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/8/8d/Volantis_5x03_(1).jpg/revision/latest?cb=20150427111331'}, 
	{ name: 'Meereen', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/8/89/Meereen.png/revision/latest?cb=20150328211743'}, 
	{ name: 'Oldtown', image_url: 'http://vignette2.wikia.nocookie.net/iceandfire/images/c/cc/Oldtown-Game-of-Thrones.jpeg/revision/latest?cb=20120619213250'}, 
	{ name: 'Kings Landing', image_url: 'http://vignette3.wikia.nocookie.net/gameofthrones/images/4/43/GreatSeptExteriors.jpg/revision/latest?cb=20150321161915'}, 
	{ name: 'Qarth', image_url: 'http://awoiaf.westeros.org/images/thumb/a/ab/Qarth_HBO.jpg/638px-Qarth_HBO.jpg'}, 
	{ name: 'Braavos', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/7/7b/Titan_of_Braavos.jpg/revision/latest/scale-to-width-down/1000?cb=20150504024857'}, 
	{ name: 'White Harbor', image_url: 'http://vignette3.wikia.nocookie.net/gotrp/images/7/79/White_harbor.jpg/revision/latest?cb=20140914155614'}, 
	{ name: 'Lannisport', 'http://static.planetminecraft.com/files/resource_media/screenshot/1227/lannisport_0001_2783518.jpg'}
	{ name: 'Pentos', image_url: 'https://s-media-cache-ak0.pinimg.com/564x/ac/d2/ce/acd2ce9de0c642b1d1115c49b5d3e884.jpg'}, 
	{ name: 'Astapor', image_url: 'http://vignette1.wikia.nocookie.net/ironthronerp/images/a/a3/Astapor.png/revision/latest?cb=20151023174622'} 
	{ name: 'Yunkai', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/5/50/Yunkai.png/revision/latest?cb=20150328212211'}, 
	{ name: 'Qohor', image_url: 'http://fandomania.com/wp-content/uploads/2011/05/06/Games-of-Thrones-1.03-1.jpg'}])
