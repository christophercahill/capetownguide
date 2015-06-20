require "sinatra"

get "/" do
	erb :index
end

get "/places" do
	@places = ["Lion's Head", "Camp's Bay", "Old Biscuit Mill"]
	erb :places
end


get "/places/:place" do |place|
	places = {"lion" => "Lion's Head", "camp" => "Camp's Bay", "old" => "Old Biscuit Mill"}
	@place = place
	@name = places[@place]
	erb :place
end 
