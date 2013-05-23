require_relative '../setup'
require_relative 'spec_helper'
require_relative 'src/roman_numeral'

describe "#roman_numeral" do
  Given(:subject) { RomanNumeral.new }

  context "an input of 1 returns 'I'" do
    Given(:input) { 1 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("I") }
  end

  context "an input of 2 returns 'II'" do
    Given(:input) { 2 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("II") }
  end

  context "an input of 3 returns 'III'" do
    Given(:input) { 3 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("III") }
  end

  context "an input of 4 returns 'IV'" do
    Given(:input) { 4 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("IV") }
  end

  context "an input of 5 returns 'V'" do
    Given(:input) { 5 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("V") }
  end

  context "an input of 5 returns 'V'" do
    Given(:input) { 5 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("V") }
  end

  context "an input of 6 returns 'VI'" do
    Given(:input) { 6 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("VI") }
  end

  context "an input of 7 returns 'VII'" do
    Given(:input) { 7 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("VII") }
  end

  context "an input of 8 returns 'VIII'" do
    Given(:input) { 8 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("VIII") }
  end

  context "an input of 9 returns 'IX'" do
    Given(:input) { 9 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("IX") }
  end

  context "an input of 10 returns 'X'" do
    Given(:input) { 10 }
    When(:result) { subject.calculate(input) }
    Then { result.should eql("X") }
  end
end
