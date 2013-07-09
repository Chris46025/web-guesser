require 'sinatra'
require 'sinatra/reloader'

x= rand(101).to_s

get "/" do 
	
	"The secret number is #{x}"
end