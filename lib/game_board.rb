class GameBoard
  attr_reader :pieces
  
  def initialize
    @pieces = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def draw
    puts  "\n" + 
          " #{@pieces[0]} | #{@pieces[1]} | #{@pieces[2]} \n"+
          "---|---|---\n"+
          " #{@pieces[3]} | #{@pieces[4]} | #{@pieces[5]} \n"+
          "---|---|---\n"+
          " #{@pieces[6]} | #{@pieces[7]} | #{@pieces[8]} "
    return true
  end
  
  def store_position(position, piece_type)
    currentpiece = @pieces[position-1]
    if currentpiece == "X" || currentpiece =="Y" || [*1..9].include?(position) == false
      return :nope
    else
      @pieces[position-1] = piece_type
      return :yep
    end
  end
  
  def win_test
    tie = @pieces.map { |x| x == "X" || x == "Y"}
    if tie.uniq.length == 1
      return :tie
    elsif [@pieces[0], @pieces[1], @pieces[2]].uniq.length == 1 ||
          [@pieces[3], @pieces[4], @pieces[5]].uniq.length == 1 ||
          [@pieces[6], @pieces[7], @pieces[8]].uniq.length == 1 ||
          [@pieces[0], @pieces[4], @pieces[8]].uniq.length == 1 ||
          [@pieces[0], @pieces[3], @pieces[6]].uniq.length == 1 ||
          [@pieces[1], @pieces[4], @pieces[7]].uniq.length == 1 ||
          [@pieces[2], @pieces[5], @pieces[8]].uniq.length == 1
      return :win
    else
      return :none
    end
  end
end
