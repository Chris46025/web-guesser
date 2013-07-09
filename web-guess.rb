require 'sinatra'
require 'sinatra/reloader'

x= rand(101).to_s

get "/" do 
	guess= params["guess"]
	if guess.nil?
		guess=""
	elsif guess>x
		guess= "Too high babydoll"
		erb :index, :locals => {:number=> x, :message=> guess}
	elsif guess<x
		guess= "Too low babydoll"
		erb :index, :locals => {:number=> x, :message=> guess}
	else
		guess= "Right on the money baby"
		erb :index, :locals => {:number=> x, :message=> guess}	
	end
	erb :index, :locals => {:number=> x, :message=> guess}
end
