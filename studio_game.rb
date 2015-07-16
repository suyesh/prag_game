
def say_hello(name, health=100)
	current_time = Time.new
	time = current_time.strftime("%I:%M:%S")
	puts "I'm #{name.capitalize} and my health is #{health} as of #{time}"
end



player1 = "larry"
health1 = 60
player2 = "curly"
health2 = 125
player3 = "moe"
health3 = 100
player4 ="shemp"
health4 = 90



say_hello(player1, health1)
say_hello(player2, health2)
say_hello(player3)