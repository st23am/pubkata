=begin
#FizzBuzz Kata
http://content.codersdojo.org/code-kata-catalogue/fizz-buzz/

Return "fizz", "buzz" or "fizzbuzz".

For a given natural number greater zero return

"fizz" if the number is dividable by 3
"buzz" if the number is dividable by 5
"fizzbuzz" if the number is dividable by 15

Test Cases

Input   Result
1       1
2       2
3       fizz
4       4
5       buzz
6       fizz
10      buzz
15      fizzbuzz

=end

require_relative '../setup'
require_relative 'spec_helper'

require_relative '../src/fizz_buzz'

describe "#fizz_buzz" do

  Given(:subject) { FizzBuzz.new }

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
