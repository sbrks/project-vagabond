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

	{ name: 'Gulltown', image_url: 'http://awoiaf.westeros.org/images/thumb/8/8d/TN-The_Vale_of_Arryn.jpg/800px-TN-The_Vale_of_Arryn.jpg'}, 
	{ name: 'Volantis', image_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/8/8d/Volantis_5x03_(1).jpg/revision/latest?cb=20150427111331'}, 
	{ name: 'Meereen', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/8/89/Meereen.png/revision/latest?cb=20150328211743'}, 
	{ name: 'Oldtown', image_url: 'http://vignette2.wikia.nocookie.net/iceandfire/images/c/cc/Oldtown-Game-of-Thrones.jpeg/revision/latest?cb=20120619213250'}, 
	{ name: 'Kings Landing', image_url: 'http://vignette3.wikia.nocookie.net/gameofthrones/images/4/43/GreatSeptExteriors.jpg/revision/latest?cb=20150321161915'}, 
	{ name: 'Qarth', image_url: 'http://awoiaf.westeros.org/images/thumb/a/ab/Qarth_HBO.jpg/638px-Qarth_HBO.jpg'}, 
	{ name: 'Braavos', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/7/7b/Titan_of_Braavos.jpg/revision/latest/scale-to-width-down/1000?cb=20150504024857'}, 
	{ name: 'White Harbor', image_url: 'http://vignette3.wikia.nocookie.net/gotrp/images/7/79/White_harbor.jpg/revision/latest?cb=20140914155614'}, 
	{ name: 'Lannisport', image_url: 'http://static.planetminecraft.com/files/resource_media/screenshot/1227/lannisport_0001_2783518.jpg'},
	{ name: 'Storms End', image_url: 'http://awoiaf.westeros.org/images/8/8f/Storm_s_end_by_feliche.jpg'}, 
	{ name: 'Astapor', image_url: 'http://vignette1.wikia.nocookie.net/ironthronerp/images/a/a3/Astapor.png/revision/latest?cb=20151023174622'}, 
	{ name: 'Yunkai', image_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/5/50/Yunkai.png/revision/latest?cb=20150328212211'}, 
	{ name: 'Qohor', image_url: 'http://fandomania.com/wp-content/uploads/2011/05/06/Games-of-Thrones-1.03-1.jpg'},
	{ name: 'Storms End', image_url: 'http://awoiaf.westeros.org/images/8/8f/Storm_s_end_by_feliche.jpg'},
	{ name: 'Riverrun', image_url: 'http://awoiaf.westeros.org/images/e/e5/Jedruszek_Riverrun.jpg'},
	{ name: 'Pyke', image_url: 'http://awoiaf.westeros.org/images/8/8f/Storm_s_end_by_feliche.jpg'},
	{ name: 'Sunspear', image_url: 'http://awoiaf.westeros.org/images/e/e5/Jedruszek_Riverrun.jpg'}])

	posts = Post.create([
		{ title: 'Post 1', description: 'Posting Something about Westeros', user_id: '5'}
		])

