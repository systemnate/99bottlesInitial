# rubocop:disable all

class Bottles
  attr_reader :bottle_count

  def initialize(bottle_count=99)
    @bottle_count = bottle_count
  end

  def verses
    bottle_count.downto(1).map { |count| verse(count) }.join
  end

  private

  def verse(count)
    <<~SONG
      #{count} #{bottles(count)} of beer on the wall
      #{count} #{bottles(count)} of beer
      take one down pass it around
      #{ending(count)}
    SONG
  end

  def bottles(count)
    if count == 1
      "bottle"
    else
      "bottles"
    end
  end

  def ending(count)
    if count == 1
      "no more bottles of beer on the wall"
    else
      "#{count-1} #{bottles(count-1)} of beer on the wall"
    end
  end
end
