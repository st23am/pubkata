require_relative '../setup'
require_relative 'spec_helper'

describe "#fizz_buzz" do

  # replace with your object
  Given(:subject) { "Your Object" }

  context "with an input of 1" do
    Given(:input) {  1 }
    When(:result) { subject.fizz_buzz(input) }
    Then { result.should == 1 }
  end

  context "with an input of 2" do
    Given(:input) {  2 }
    When(:result) { subject.fizz_buzz(input) }
    Then { result.should == 2 }
  end

  context "with an input of 3" do
    Given(:input) { 3 }
    When(:result) { subject.fizz_buzz(input) }
    Then { result.should == "fizz" }
  end

  context "with an input of 4" do
    Given(:input) {  4 }
    When(:result) { subject.fizz_buzz(input) }
    Then { result.should == 4 }
  end

  context "with an input of 5" do
    Given(:input) { 5 }
    When(:result) { subject.fizz_buzz(input) }
    Then { result.should == "buzz" }
  end

  context "with an input of 6" do
    Given(:input) { 6 }
    When(:result) { subject.fizz_buzz(input) }
    Then { result.should == "fizz" }
  end

  context "with an input of 10" do
    Given(:input) { 10 }
    When(:result) { subject.fizz_buzz(input) }
    Then { result.should == "buzz" }
  end

  context "with an input of 15" do
    Given(:input) { 15 }
    When(:result) { subject.fizz_buzz(input) }
    Then { result.should == "fizzbuzz" }
  end
end
