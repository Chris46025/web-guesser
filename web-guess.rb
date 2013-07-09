require 'sinatra'
require 'sinatra/reloader'

x= rand(101).to_s

get "/" do 
	erb :index, :locals => {:number=> x}
end