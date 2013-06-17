=begin
  #Bowling Kata
  http://content.codersdojo.org/code-kata-catalogue/bowling-game/

  Frame   Roll	Knocked_down_pins	      Total_score  Notes
  1       1       1
  1       2       4                         5
  2       1       4
  2       2       5                         14
  3       1       6
  3       2       4                         29        Spare: 10 pins plus bonus of 5 from next roll (roll 1 of frame 4)
  4       1       5
  4       2       5                         49        Spare: 10 pins plus bonus of 10 from next roll (roll 1 frame 5)
  5       1       10                                  Strike
  5       2                                 60        Strike: 10 pins plus bonus of 1 from next frame (rolls 1 and 2 from frame 6)
  6       1       0                                   Bad luck
  6       2       1                         61
  7       1       7
  7       2       3                         77        Spare
  8       1       6
  8       2       4                         97        Spare
  9       1       10                                  Strike
  9       2                                 117
  10      1       2
  10      2       8                                   Spare
  10      3       6	                        133	      Extra roll due to spare in 10th frame


  Write a class BowlingGame with two methods
  + roll(pins : int)
  + score() : int

=end

require_relative '../setup'
require_relative 'spec_helper'
require_relative '../src/bowling_game'

describe BowlingGame do
  Given(:bowling_game) { BowlingGame }

  context "Gutter Game" do
    Given(:game) { bowling_game.new }
    When { 20.times { game.roll(0)} }
    Then { game.score.should == 0 }
  end

  context "Normal game no marks (strikes or spares)" do
    Given(:game) { bowling_game.new }
    When do
      [1,2, 3,4, 5,4, 6,3, 0,9, 9,0, 5,4, 7,1, 1,8, 3,3].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 78 }
  end


  context "spares" do
    Given(:game) { bowling_game.new }
    When do
      [1,2, 3,4, 5,4, 6,3, 0,9, 9,1, 5,4, 7,1, 1,8, 3,3].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 84 }
  end

  context "strikes" do
    Given(:game) { bowling_game.new }
    When do
      [1,2, 3,4, 5,4, 6,3, 0,9, 10, 5,4, 7,1, 1,8, 3,3].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 88 }
  end

  context "strike followed by spare" do
    Given(:game) { bowling_game.new }
    When do
      [1,2, 3,4, 5,4, 6,3, 10, 9,1, 5,4, 7,1, 1,8, 3,3].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 95 }
  end

  context "spares followed by strike" do
    Given(:game) { bowling_game.new }
    When do
      [1,2, 3,4, 5,4, 6,3, 1,9, 10, 5,4, 7,1, 1,8, 3,3].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 99 }
  end

  context "turkey (3 strikes in a row)" do
    Given(:game) { bowling_game.new }
    When do
      [1,2, 3,4, 5,4, 6,3, 10, 10, 10, 7,1, 1,8, 3,3].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 126 }
  end

  context "strike in the 10th frame" do
    Given(:game) { bowling_game.new }
    When do
      [10, 10, 10, 10, 10, 10, 10, 10, 10, 10,10,10].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 300 }
  end

  context "strike in the 10th frame" do
    Given(:game) { bowling_game.new }
    When do
      [1,2, 3,4, 5,4, 6,3, 0,9, 9,0, 5,4, 7,1, 1,8, 10,3,3].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 88 }
  end

  context "spare in the 10th frame" do
    Given(:game) { bowling_game.new }
    When do
      [1,2, 3,4, 5,4, 6,3, 0,9, 9,0, 5,4, 7,1, 1,8, 1,9,3].each do |ball|
        game.roll(ball)
      end
    end
    Then { game.score.should == 85 }
  end

  context "Perfect Game" do
    Given(:game) { bowling_game.new }
    When { 12.times { game.roll(10) }}
    Then { game.score.should == 300 }
  end
end

