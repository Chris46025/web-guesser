require 'sinatra'
require 'sinatra/reloader'

get "/" do 
	@date= Time.now.strftime('%a,  %b ,%d ,%Y')
	@Tyhme= Time.now.strftime('%I:%M:%S %p')
	"Hello World\n"+
	"the date is "+@date+"\n"+
	"the time is "+@Tyhme
end