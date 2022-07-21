# frozen_string_literal: true

require_relative './bottle_verse'

class CountdownSong
  attr_reader :verse_template, :max, :min

  def initialize(verse_template: BottleVerse, max: 99999, min: 0)
    @verse_template = verse_template
    @max = max
    @min = min
  end

  def verse(num)
    verse_template.lyrics(num)
  end

  def verses(num1, num2)
    num1.downto(num2).map { |num| verse(num) }.join("\n")
  end

  def song
    verses(max, min)
  end
end
