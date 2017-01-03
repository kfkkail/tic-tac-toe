class Player
  attr_reader :game_piece
  
  def initialize
    @game_piece = "X"
  end
  
  def swap_piece
    if @game_piece == "X"
      @game_piece = "Y"
    else
      @game_piece = "X"
    end
  end
end
