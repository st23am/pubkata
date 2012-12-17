=begin
  Urinal Kata Rules

  1. Get as far away from the door as possible.
  2. Try not to stand next to another dude.
  3. Really try not to stand next to two other dudes.

  The exceptions are not that complicated either. Rules 2 and 3 can be violated in one of two cases.

  1. There is a line
  2. Someone else has already broken that particular rule.

=end


require_relative '../setup'
require_relative 'spec_helper'
require_relative '../src/urinal_rules'

describe UrinalRules do

  Given(:urinal_rules) { UrinalRules.new }
  context "Stalemate (all stalls are full)" do
    When(:result) { urinal_rules.solve([true, true, true, true], false) }
    Then { result.should be_nil } #all stalls are occupied get out now.
  end

  context "Rule 1: get as far away from the door as possible" do
    When(:result) { urinal_rules.solve([false, false, false,false, false], false) }
    Then { result.should == 4 }
  end

  context "Rule 2: Avoid standing next to another dude" do
    When(:result) { urinal_rules.solve([true, false, false, false, true], true) }
    Then { result.should == 2 }
  end

  context "Rule 2: Exit to in order to avoid standing next to another dude" do
    When(:result) { urinal_rules.solve([true, false, true, false, true], false) }
    Then { result.should be_nil }
  end

  context "Rule 2, Exception 1: you can havea  neighbor if there is a line" do
    When(:result) { urinal_rules.solve([false, true, false, true, false], true) }
    Then { result.should == 4 }
  end

  context "Rule 2 Exception 2: You can have a neighbor if someone else already does." do
    When(:result) { urinal_rules.solve([true, true, false, false, true], false) }
    Then { result.should == 3 }
  end

  context "Rule 3: Really avoid standing next to TWO other dudes." do
    When(:result) { urinal_rules.solve([true, false, true, false, true], false) }
    Then { result.should be_nil }
  end

  context "Rule 3: Exception 1: You can have two neighbors if there is a line" do
    When(:result) { urinal_rules.solve([true, false, true, false, true], true) }
    Then { result.should == 3 }
  end

  context "Rule 3: Exception 1: You can have two neighbors if somoene else already does" do
    When(:result) { urinal_rules.solve([true, true, true, false, true], false) }
    Then { result.should == 3 }
  end
end

