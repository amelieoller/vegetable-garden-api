# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

crops = [
	{
		name: "Zuccini", 
		daysToMaturity: 42,
		imageUrl: 'https://www.everwilde.com/media/1000/resized/Dark-Green-Zucchini-Summer-Squash-01_medium.gif',
		datePlanted: Date.today,
		active: true
	},
	{
		name: "Tomato", 
		daysToMaturity: 49,
		imageUrl: 'https://gardeners.s3.amazonaws.com/p/VETOM34353_3.jpg',
		datePlanted: Date.today - 8,
		active: true
	},
	{
		name: "Eggplant", 
		daysToMaturity: 70,
		imageUrl: 'https://edge.bonnieplants.com/www/uploads/20180920011827/blackbeauty-eggplant-container-lo.jpg',
		datePlanted: Date.today + 7,
		active: true
	},
	{
		name: "Pepper", 
		daysToMaturity: 70,
		imageUrl: 'https://edge.bonnieplants.com/www/uploads/20180920004013/pimiento-pepper.jpg',
		datePlanted: Date.today - 20,
		active: true
	},
	{
		name: "Potatoes", 
		daysToMaturity: 150,
		imageUrl: 'https://img-aws.ehowcdn.com/350x235p/s3-us-west-1.amazonaws.com/contentlab.studiod/getty/9564cf1cd0504fdd8a80f39a4fc481aa.jpg',
		datePlanted: Date.today - 15,
		active: false
	},
	{
		name: "Cabbage", 
		daysToMaturity: 80,
		imageUrl: 'https://www.gardeningknowhow.com/wp-content/uploads/2009/03/cabbage-400x265.jpg',
		datePlanted: Date.today - 4,
		active: false
	},
	{
		name: "Carrots", 
		daysToMaturity: 60,
		imageUrl: 'https://hgtvhome.sndimg.com/content/dam/images/hgtv/fullset/2018/3/21/0/shutterstock_221550766_Lukas-Gojda_carrot-plants.jpg.rend.hgtvcom.616.411.suffix/1521655913719.jpeg',
		datePlanted: Date.today + 12,
		active: false
	},
]

Crop.create(crops)