=begin

=end

require_relative '../setup'
require_relative 'spec_helper'

require_relative '../src/zigzag'

describe "#zigzag" do

  Given(:subject) { Zigzag.new }

  context "Encode 'WE ARE DISCOVERED. FLEE AT ONCE' with 3 rows" do
    Given(:string) { 'WE ARE DISCOVERED. FLEE AT ONCE' }
    Given(:numrow) { 3 }
    When(:result) { subject.encrypt(string, numrow) }
    Then { result.should == "WECRLTEERDSOEEFEAOCAIVDEN" }
  end

end
