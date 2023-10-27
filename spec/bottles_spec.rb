# rubocop:disable all

require 'bottles'

describe Bottles do
  describe "#verses" do
    it 'works when only 1 beer' do
      expected = <<~SONG
        1 bottle of beer on the wall
        1 bottle of beer
        take one down pass it around
        no more bottles of beer on the wall
      SONG

      expect(Bottles.new(1).verses).to eql(expected)
    end

    it 'works when 2 beers' do
      expected = <<~SONG
        2 bottles of beer on the wall
        2 bottles of beer
        take one down pass it around
        1 bottle of beer on the wall
        1 bottle of beer on the wall
        1 bottle of beer
        take one down pass it around
        no more bottles of beer on the wall
      SONG

      expect(Bottles.new(2).verses).to eql(expected)
    end
    it 'sings the song' do
      expected = <<~SONG
        3 bottles of beer on the wall
        3 bottles of beer
        take one down pass it around
        2 bottles of beer on the wall
        2 bottles of beer on the wall
        2 bottles of beer
        take one down pass it around
        1 bottle of beer on the wall
        1 bottle of beer on the wall
        1 bottle of beer
        take one down pass it around
        no more bottles of beer on the wall
      SONG

      expect(Bottles.new(3).verses).to eql(expected)
    end
  end
end
