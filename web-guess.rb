require 'sinatra'
require 'sinatra/reloader'

q1="Forward I weigh a lot backwards im not, what am I?? "
a1="ton"
q2="Strike me up and light my head what once red is black instead what am I?"
a2="match"
q3="What kind of people are always in a rush?"
a3="russian"
q4="What goes up and never comes down?"
a4="age"
q5="A man was in the forest with a friend and ate his friend because he thought they would never escape. When he finds civilization he doesnt tell anyone and no one knows that he ate his friend. Who is that man?"
a5="you"
q6="What won't run long without winding?"
a6="river"
q7="What is it that's always coming but never arrives?"
a7="tomorrow"
q8="The more you take away, the larger it grows. What is it?"
a8="hole"
q9="What kind of religious leader moves only diagnolly?"
a9="bishop"
q10="You can have me but cannot hold me, gain me and quickly lose me, if treated with care I can be great, and if betrayed I will break. What am I?"
a10="trust"
q11="I can run but not walk and wherever I go thought follows close behind. What am I?"
a11="nose"
q12="The man who invented it does not want it, the man who bought it doesnt need it and the man who needs it does not see it. What is it?"
a12="coffin"
q13="I am at the beginning of eternity, the end of time and space, the beginning of every end and the end of every race. What am I?"
a13="e"
q14="What gets wetter the more it dries?"
a14="towel"
q15="I have hands but no feet and a face with no eyes. I come in all shapes and sizes and sometimes with a surprise inside. What am I?"
a15="clock"
q16="It is greater than God and more evil than the devil. The poor have it, the rich need it and if you eat it you'll die. What is it?"
a16="nothing"
q17="At night they come without being fetched. By day they are lost without being stolen. What are they?"
a17="star"
q18="There was a green house. Inside the green house there was a white house. Inside the white house there was a red house. Inside the red house there were lots of babies. What is it?"
a18="watermelon"
q19="What is in seasons, seconds, centuries and minutes but not in decades, years or days?"
a19="n"
q20= "What phone belongs to the first person?"
a20="iphone"

score=0
game_counter=0

pages = { :page1 => [q1, a1], :page2 => [q2, a2], :page3 => [q3, a3], :page4 => [q4, a4], :page5 => [q5, a5], :page6 => [q6, a6],
 :page7 => [q7, a7], :page8 => [q8, a8], :page9 => [q9, a9], :page10 => [q10, a10], :page11 => [q11, a11], :page12 => [q12, a12],
  :page13 => [q13, a13], :page14 => [q14, a14], :page15 => [q15, a15], :page16 => [q16, a16], :page17 => [q17, a17], :page18 => [q18, a18],
   :page19 => [q19, a19], :page20 => [q20, a20]}

answer = ""

get '/' do 
	guess = params["guess"]

if game_counter!=10
	if guess.nil? 

		page = pages.keys[rand(pages.keys.length)]
		q = pages[page][0]
		a = pages[page][1]
		
		answer = a

		erb :web_guess_index, :locals => {:question => q, :answer => a, :message => guess, :score => score}

	else	
		game_counter +=1
		if guess == answer
			success = true
			score += 1
		else 
			success = false
		end
		erb :web_guess_win_lose, :locals => {:success => success, :answer => answer, :score => score}
	end
else
	game_counter=0
	erb :web_guess_end_game, :locals => {:score => score}
end
end


