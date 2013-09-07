require 'spec_helper'

describe Question do
  context "to_s" do
    it do
      q = Question.new("integer")
            .insert("1", "divide")
            .insert("2", "multiply")
            .insert("1", "subtract")
            .insert("1", "add")
            .insert("3")
      q.to_s.should == "1 ÷ 2 x 1 - 1 + 3 = 2.5"
    end
  end
  context "title" do
    it do
      q = Question.new("integer")
            .insert("1", "divide")
            .insert("2", "multiply")
            .insert("1", "subtract")
            .insert("1", "add")
            .insert("3")
      q.title.should == "1 ÷ 2 x 1 - 1 + 3"
    end
  end
end
