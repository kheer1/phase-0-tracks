require_relative 'wordgame'

describe Wordgame do
    let(:game) { Wordgame.new }

    it "sets the starting word" do
        expect(game.setstartingword("big")).to eq ["b", "i", "g"]
    end
     
end