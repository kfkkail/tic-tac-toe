Dir['lib/**.*'].each { |file| require_relative file }

class GamePlay
  def initialize
  end

  def self.start_game
    puts "cool!"
    run_game
  end
  
  def self.run_game
    puts "Let's Play Tic Tac Toe!"
    puts "Player 1 goes first!"
    
    game_ended = false
    player1 = Player.new("Player1")
    player2 = Player.new("Player2")
    gameboard = GameBoard.new
    
    while !game_ended
      gameboard.draw
      
    end
    start_game
  end
end
GamePlay.start_game()