Dir['lib/**.*'].each { |file| require_relative file }

class GamePlay
  def initialize
    puts "cool"
    @gameboard = GameBoard.new
    @player = Player.new
  end

  def start_game
    puts "Let's play some Tic Tac Toe!"
    puts "Player X goes first!"
    next_turn
  end
  
  def next_turn
    @gameboard.draw
    puts "Player #{@player.game_piece}, please select a position from 1-9"
    res = :nope
    while res == :nope do
      input = gets.chomp.to_i
      res = @gameboard.store_position(input, @player.game_piece)
      if res == :nope
        puts "That's not a valid position, try again!"
      end
    end
    
    isgameover = @gameboard.win_test
    
    if isgameover == :win
      @gameboard.draw
      puts "We have a winner! #{@player.game_piece} wins!"
      start_new_game
    elsif isgameover == :tie
      puts "Both players suck! Game is tied."
      start_new_game
    else
      @player.swap_piece
      next_turn
    end
  end
  
  def start_new_game
    puts "Would you like to start a new game? (Y or N)"
    answer = gets.chomp.capitalize
    if answer == "Y"
      initialize
      start_game
    else
    end
  end
end

game = GamePlay.new
game.start_game()