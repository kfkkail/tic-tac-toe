require 'player'

# spec/player_spec.rb
describe Player do
  describe ".initalize" do
    context "when making a new object" do
      player1 = Player.new()
      it "a Player object exists" do
        expect(player1.is_a? Player).to eql(true)
      end
      it "game_piece is intiallized to X" do
        expect(player1.game_piece).to eql("X")
      end
    end
  end
  
  describe ".swap_piece" do
    player1 = Player.new()
    context "given game_piece is currently X" do
      it "game_piece should be Y" do
        player1.swap_piece
        expect(player1.game_piece).to eql("Y")
      end
    end
    
    context "given the Player is currently Y" do
      it "Player is now X" do
        player1.swap_piece
        expect(player1.game_piece).to eql("X")
      end
    end
  end
end
