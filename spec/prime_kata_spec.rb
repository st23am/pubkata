=begin

=end

require_relative '../setup'
require_relative 'spec_helper'

require_relative '../src/prime'

describe "#prime" do

  Given(:subject) { Prime.new }

  context "Is 1 a prime number" do
    Given(:input) { 1 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == true }
  end

  context "Is 2 a prime number" do
    Given(:input) { 2 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == true }
  end

  context "Is 3 a prime number" do
    Given(:input) { 3 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == true }
  end

  context "Is 4 a prime number" do
    Given(:input) { 4 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == false }
  end

  context "Is 5 a prime number" do
    Given(:input) { 5 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == true }
  end

  context "Is 6 a prime number" do
    Given(:input) { 6 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == false }
  end

  context "Is 7 a prime number" do
    Given(:input) { 7 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == true }
  end

  context "Is 997 a prime number" do
    Given(:input) { 997 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == true }
  end

  context "Is 998 a prime number" do
    Given(:input) { 998 }
    When(:result) { subject.is_prime(input) }
    Then { result.should == false }
  end

  context "Largest Prime Factor of 4" do
    Given(:input) { 4 }
    When(:result) { subject.largest_prime_factor(input) }
    Then { result.should == 2 }
  end

  context "Largest Prime Factor of 14" do
    Given(:input) { 14 }
    When(:result) { subject.largest_prime_factor(input) }
    Then { result.should == 7 }
  end

  context "Largest Prime Factor of 52" do
    Given(:input) { 52 }
    When(:result) { subject.largest_prime_factor(input) }
    Then { result.should == 13 }
  end

  context "Largest Prime Factor of 92" do
    Given(:input) { 92 }
    When(:result) { subject.largest_prime_factor(input) }
    Then { result.should == 23 }
  end

  context "Largest Prime Factor of 148" do
    Given(:input) { 148 }
    When(:result) { subject.largest_prime_factor(input) }
    Then { result.should == 37 }
  end

  context "Largest Prime Factor of 813" do
    Given(:input) { 813 }
    When(:result) { subject.largest_prime_factor(input) }
    Then { result.should == 271 }
  end

  

end
