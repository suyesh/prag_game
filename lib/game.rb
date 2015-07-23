require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

class Game
	attr_reader :title
	def initialize(title)
		@title = title
		@players = []
	end

	def add_player(a_player)
		@players << a_player
	end

	def print_stats
		strong_players, wimpy_players = @players.partition {|player| player.strong?}
		puts "\n#{@title} Statistics:"

  puts "\n#{strong_players.size} strong players:"
  strong_players.each do |player|
    puts "#{player.name} (#{player.health})"
  end

  puts "\n#{wimpy_players.size} wimpy players:"
  wimpy_players.each do |player|
    puts "#{player.name} (#{player.health})"
  end
	end

	def play(rounds)
		puts "There are #{@players.size} players in game #{@title}"
		@players.each do |player|
			puts player
		end
		1.upto(rounds) do |round|
			puts "\nRound #{round}:"
			@players.each do |player|
				GameTurn.take_turn(player)
				puts player
			end
		end
	end
end
