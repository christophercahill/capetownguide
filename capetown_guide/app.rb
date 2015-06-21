require "sinatra"

get "/" do
	erb :index
end

get "/places" do 
	@places = ["Lion's Head", "Camps Bay", "Old Biscuit Mill"]
	@places_url = { "Lion's Head" => "lion" , 
		"Camps Bay" => "camp" , "Old Biscuit Mill" => "old" } 
	erb :places
end

get "/places/:destination" do |destination|
	places = {"lion" => 
				{"title" => "Lion's Head",
				"picture" => "http://www.capetownmagazine.com//media_lib/r2/fa98c334aa8f8907bd2a8595e46c5526.img.jpg", 
				"map" => "https://www.google.co.za/maps/place/Lion's+Head,+Table+Mountain+National+Park,+Signal+Hill,+Cape+Town,+8001/@-33.935037,18.3889709,15z/data=!4m2!3m1!1s0x1dcc6705adf437ed:0x482833296b600211", 
				"description" => "Description: <br> 

Lion's head is a mountain in Cape Town, South Africa, located between Table Mountain and Signal Hill. Lion's Head peaks at 669 metres (2,195 ft) above sea level. The mountain is a part of the Table Mountain National Park.

The suburbs of the city surround the peak on almost all sides of the Mountain, but strict management by city authorities has kept development of housing off the higher ground. The Lion's Head area is significant to the Cape Malay community, who historically lived in the Bo-Kaap quarter.

<br> <br> 

Activities: <br> 

Lion's head is know for it's beautiful views over both the city and the Atlantic Seaboard. The hour-long walk to the top is extremely popular, especially during the full moon and during sunrise. Its slopes are also a popular launching point for paragliders.

 

"
			}, 	
			"camp" => 
			{"title" => "Camps Bay", 
				"picture" => "http://www.savingwater.co.za/wp-content/uploads/2010/02/camps-bay.jpg", 
				"map" => "https://www.google.co.za/maps/place/Camps+Bay,+Cape+Town/@-33.9520409,18.382408,15z/data=!3m1!4b1!4m2!3m1!1s0x1dcc67ad0e328c89:0xc7a0b241c4464b97", 
				"description" => "Description/History: <br>

Camps Bay is an affluent suburb of Cape Town, South Africa. In summer it attracts a large number of foreign visitors as well as South Africans. The first residents of Camps Bay were the San (Hunter Gatherers) and the Goringqhaique, Khoi pastorates. By 1713 the number of Gringqhaique population had been reduced by measles and smallpox. All that was left of their settlement was an old kraal (Oudekraal). For most of the 1800s Camps Bay was undeveloped. Lord Charles Somerset used the area for hunting and used the Roundhouse as his lodge. Kloof Road was built in 1848 and in 1884 Thomas Bain was commissioned to build a road from Sea Point to Camps Bay using convict labour. In 1913 Camps Bay was incorporated into Cape Town although it was still seen as a recreational area rather than a residential area.

 <br><br> 

Activities: <br>

If you head south from the beaches of Clifton (or north from the buzz of Sea Point), you’ll discover the chic suburb of Camps Bay. The main attraction, Victoria Road, is jam-packed with funky restaurants, trendy pubs, and bucket-and-spade shops on one side, and a palm-fringed beach on the other.

If you’re staying over, there’s a wide range of accommodation on offer, from self-catering apartments to stylish villas and the old and gracious The Bay Hotel with its perfect views of Camps Bay beach.

"
			}, 
				"old" => 
				{"title" => "Old Biscuit Mill", 
				"picture" =>  "http://www.thewrendesign.com/wp-content/uploads/design-goods-market/biscuit-mill-1.jpg", 
				"map" => "https://www.google.co.za/maps/place/The+Old+Biscuit+Mill/@-33.9275533,18.4574846,17z/data=!3m1!4b1!4m2!3m1!1s0x1dcc5da6b46abd99:0x39cc47e5b0eb6340", 
				"description" => "Description: <br> There are many markets in Cape Town, but one stands out head and shoulders above all others - The Old Biscuit Mill market in Woodstock. A wide range of food stalls, an excellent vibe, good music and did we mention the excellent wide range of foods?

Tucked away in Woodstock, one of Cape Towns poorer suburbs, The Old Biscuit Mill market has managed to attract the young and trendy Cape Town crowd in their droves with an atmosphere similar to Borough Market in London.

The food stalls represent a wide range of tastes from your standard sandwiches (nothing standard about them though), to Ostrich burgers, Greek kebabs, organic local foods, French food and a wide range of breads, cheeses and wines all locally produced in the Western Cape.

Directly outside of the market you will find a treasure-trove of homeware shops that sell those obscure and never thought of knick-knacks that you never knew you needed untill you saw them!

The market runs every Saturday what ever the weather from 9am till 2pm, be advised it can get extremely busy and at times finding a parking spot can be a problem so arrive early (before 10:30am) in order to get a decent parking spot."
			}}
				
	@destination = places[destination]
	@name = @destination["title"]
	@image_url = @destination["picture"]
	@description = @destination["description"]
	@map_url = @destination["map"]
	erb :place
end 
