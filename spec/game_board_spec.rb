require 'game_board'

# spec/game_board_spec.rb
describe GameBoard do
  game_board1 = GameBoard.new()
  describe ".initalize" do
    context "when making a new object" do
      it "a GameBoard object exists" do
        expect(game_board1.is_a? GameBoard).to eql(true)
      end
      it "GameBoard pieces are reset" do
        expect(game_board1.pieces).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
      end
    end
  end
  
  describe ".draw" do
    context "given positions" do
      it "draws the board" do
        expect(game_board1.draw).to eql(true)
      end
    end
  end
  
  describe ".store_position" do
    context "given an input" do
      it "changes the game pieces" do
        gamepiece = "X"
        position = 1
        game_board1.store_position(position, gamepiece)
        expect(game_board1.pieces).to eql(["X", 2, 3, 4, 5, 6, 7, 8, 9])
      end
    end
  end
  
  describe ".win_test" do
    context "with current piece positions" do
      it "there is no winner" do
        game_board1.store_position(1, "X")
        game_board1.store_position(2, "X")
        game_board1.store_position(3, "Y")
        expect(game_board1.win_test).to eql(:none)
      end
      it "there is a tie" do
        game_board1.store_position(4, "Y")
        game_board1.store_position(5, "Y")
        game_board1.store_position(6, "X")
        game_board1.store_position(7, "X")
        game_board1.store_position(8, "Y")
        game_board1.store_position(9, "X")
        expect(game_board1.win_test).to eql(:tie)
      end
      
      it "there is a winner 123" do
        game_board2 = GameBoard.new()
        game_board2.store_position(1, "X")
        game_board2.store_position(2, "X")
        game_board2.store_position(3, "X")
        expect(game_board2.win_test).to eql(:win)
      end
      it "there is a winner 456" do
        game_board2 = GameBoard.new()
        game_board2.store_position(4, "X")
        game_board2.store_position(5, "X")
        game_board2.store_position(6, "X")
        expect(game_board2.win_test).to eql(:win)
      end
      it "there is a winner 789" do
        game_board2 = GameBoard.new()
        game_board2.store_position(7, "Y")
        game_board2.store_position(8, "Y")
        game_board2.store_position(9, "Y")
        expect(game_board2.win_test).to eql(:win)
      end
      it "there is a winner 159" do
        game_board2 = GameBoard.new()
        game_board2.store_position(1, "Y")
        game_board2.store_position(5, "Y")
        game_board2.store_position(9, "Y")
        expect(game_board2.win_test).to eql(:win)
      end
      it "there is a winner 147" do
        game_board2 = GameBoard.new()
        game_board2.store_position(1, "Y")
        game_board2.store_position(4, "Y")
        game_board2.store_position(7, "Y")
        expect(game_board2.win_test).to eql(:win)
      end
      it "there is a winner 258" do
        game_board2 = GameBoard.new()
        game_board2.store_position(2, "Y")
        game_board2.store_position(5, "Y")
        game_board2.store_position(8, "Y")
        expect(game_board2.win_test).to eql(:win)
      end
      it "there is a winner 369" do
        game_board2 = GameBoard.new()
        game_board2.store_position(3, "Y")
        game_board2.store_position(6, "Y")
        game_board2.store_position(9, "Y")
        expect(game_board2.win_test).to eql(:win)
      end
    end
  end
end