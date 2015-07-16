player1 = "larry"
health1 = 60
player2 = "curly"
health2 = 125
player3 = "moe"
health3 = 100
player4 ="shemp"
health4 = 90


puts "#{player1.capitalize}'s health is #{health1}"
puts "#{player2.upcase} has an health of #{health2}"

health2 = health1

puts "#{player2.upcase} has an health of #{health2}"

health1 = 30

puts "Larry: #{health1}"
puts "Curly: #{health2}"

puts "#{player3.capitalize} has a health of #{health3}.".center(50, '*')

puts "#{player4.capitalize.ljust(30, '.')} #{health4} health"