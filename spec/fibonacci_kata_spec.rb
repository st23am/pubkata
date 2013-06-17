=begin
#Fibonacci Kata

In mathematics, the Fibonacci numbers or Fibonacci series or Fibonacci sequence 
are the numbers in the following integer sequence:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 
4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, ...

By definition, the first two numbers in the Fibonacci sequence are 0 and 1, and 
each subsequent number is the sum of the previous two.


In this kata you will write a function that will accept a single arguement for the 
length of fibonacci sequence you wish returned.

Example:

fibonacci(1) -> "0"
fibonacci(2) -> "0,1"
fibonacci(3) -> "0,1,1"
fibonacci(4) -> "0,1,1,2"

=end

require_relative '../setup'
require_relative 'spec_helper'

require_relative '../src/fibonacci'

describe "#fibonacci" do

  Given(:subject) { Fibonacci.new }

  context "with an input of 0" do
    Given(:input) { 0 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "" }
  end

  context "with an input of 1" do
    Given(:input) { 1 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "0" }
  end

  context "with an input of 2" do
    Given(:input) { 2 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "0,1" }
  end

  context "with an input of 3" do
    Given(:input) { 3 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "0,1,1" }
  end

  context "with an input of 4" do
    Given(:input) { 4 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "0,1,1,2" }
  end

  context "with an input of 5" do
    Given(:input) { 5 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "0,1,1,2,3" }
  end

  context "with an input of 6" do
    Given(:input) { 6 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "0,1,1,2,3,5" }
  end

  context "with an input of 7" do
    Given(:input) { 7 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "0,1,1,2,3,5,8" }
  end

  context "with an input of 29" do
    Given(:input) { 29 }
    When(:result) { subject.fibonacci(input) }
    Then { result.should == "0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946,17711,28657,46368,75025,121393,196418,317811" }
  end

end
