require_relative '../setup'
require_relative 'spec_helper'

require_relative '../src/minesweeper'

describe Minesweeper do
  describe "#generate_mine_field" do
    Given(:game) { Minesweeper.new }
    context "simple 3 x 4 with 2 mines" do
      Given(:field) do
        <<-EOF.gsub(/^\s+/, "")
          *...
          ....
          .*..
          ....
        EOF
      end
      When(:result) { game.generate_mine_field(field) }
      Then do
        result.should == <<-EOF.gsub(/^\s+/, "")
                                *100
                                2210
                                1*10
                                1110
                            EOF
      end
    end
  end
end
