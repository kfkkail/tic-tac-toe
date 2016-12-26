require 'player'
# spec/player_spec.rb
describe Player do
  describe "initalize" do
    context "given an empty input" do
      it "returns zero" do
        expect(Player.new().is_a? Player).to eql(true)
      end
    end
  end
end
