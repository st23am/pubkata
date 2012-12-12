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

describe BowlingGame do
  Given(:game) { BowlingGame.new }

  context "Frame: 1 Roll: 1 Kocked Down Pins: 1" do
    #total score should nil
  end

  context "Frame: 1 Roll: 2 Kocked Down Pins: 4" do
    #total score should 5
  end

  context "Frame: 2 Roll: 1 Kocked Down Pins: 4" do
    #total score should nil
  end

  context "Frame: 2 Roll: 2 Kocked Down Pins: 5" do
    #total score should 14
  end

  context "Frame: 3 Roll: 1 Kocked Down Pins: 6" do
    #total score should nil
  end

  context "Frame: 3 Roll: 2 Kocked Down Pins: 4" do
    #total score should 29
  end

  context "Frame: 4 Roll: 1 Kocked Down Pins: 5" do
    #total score should nil
  end

  context "Frame: 4 Roll: 2 Kocked Down Pins: 5" do
    #total score should 49
  end

  context "Frame: 5 Roll: 1 Kocked Down Pins: 10" do
    #total score should nil
  end

  context "Frame: 5 Roll: 2 Kocked Down Pins: nil" do
    #total score should 60
  end

  context "Frame: 6 Roll: 1 Kocked Down Pins: 0" do
    #total score should nil
  end

  context "Frame: 6 Roll: 2 Kocked Down Pins: 1" do
    #total score should 61
  end

  context "Frame: 7 Roll: 1 Kocked Down Pins: 7" do
    #total score should nil
  end

  context "Frame: 7 Roll: 2 Kocked Down Pins: 3" do
    #total score should 77
  end

  context "Frame: 8 Roll: 1 Kocked Down Pins: 6" do
    #total score should nil
  end

  context "Frame: 8 Roll: 2 Kocked Down Pins: 4" do
    #total score should 97
  end

  context "Frame: 9 Roll: 1 Kocked Down Pins: 10" do
    #total score should nil
  end

  context "Frame: 9 Roll: 2 Kocked Down Pins: nil" do
    #total score should 117
  end

  context "Frame: 10 Roll: 1 Kocked Down Pins: 2" do
    #total score should nil
  end

  context "Frame: 10 Roll: 2 Kocked Down Pins: 8" do
    #total score should nil
  end

  context "Frame: 10 Roll: 3 Kocked Down Pins: 6" do
    #total score should 133
  end
end

