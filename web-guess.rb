require 'sinatra'
require 'sinatra/reloader'

q1="Forward I weigh a lot backwards im not, what am I?? "
a1="ton"
q2="Strike me up and light my head what once red is black instead what am I?"
a2="match"
q3="What kind of people are always in a rush?"
a3="russians"
q4="What goes up and never comes down?"
a4="age"
q5="A man was in the forest with a friend and ate his friend because he thought they would never escape. When he finds civilization he doesnt tell anyone and no one knows that he ate his friend. Who is that man?"
a5="you"
q6="You are done hope you have fun try again now that you know all the answers LOL"
a6="score"
x=0

get "/" do
	guess= params["guess"]
	if guess.nil?
		guess=""
	end
	
	x+=1
	if x==1||x==2
		erb :index, :locals => {:question=> q1, :message=> guess, :answer=> a1}
	elsif x==3||x==4
		erb :index, :locals => {:question=> q2, :message=> guess, :answer=> a2}
	elsif x==5||x==6
		erb :index, :locals => {:question=> q3, :message=> guess, :answer=> a3}
	elsif x==7||x==8
		erb :index, :locals => {:question=> q4, :message=> guess, :answer=> a4}
	elsif x==9||x==10
		erb :index, :locals => {:question=> q5, :message=> guess, :answer=> a5}
	else
		x=0
		erb :index, :locals => {:question=> q6, :message=> guess, :answer=> a6}
	end	
end