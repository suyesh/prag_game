class Player
	attr_reader :health
	attr_accessor :name
	def initialize(name,health=100)
		@name = name.capitalize
		@health = health
	end

	def to_s
		"I am #{@name} with health of #{@health} and Score of #{score}"
	end

	def blam
		@health -= 10
		puts "#{@name} got blammed"
	end

	def w00t
		@health += 15
		puts "#{@name} got w00ted"
	end

	def score
		@health + @name.length
	end
end

class Game
	attr_reader :title
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(a_player)
		@players << a_player
	end

	def play
		puts "There are #{@players.size} players in game #{@title}"
		@players.each do |player|
			puts player
		end
		@players.each do |player|
			player.w00t
			player.blam
			puts player
		end
	end
end
player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play
