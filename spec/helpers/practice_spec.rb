require 'spec_helper'

describe Practice do
  describe "operator" do
    include Practice::Operator
    it { operators.should be_a Hash }
    it { operator("add").should == " + " }
    it { operator("subtract").should == " - " }
    it { operator("multiply").should == " x " }
    it { operator("divide").should == " ÷ " }
  end
  describe "calculation" do
    include Practice::Calculation
    context "integer" do
      it { integer_calc("+", 1, 2).should == 3 }
      it { integer_calc(" - ", 1, 2).should == -1 }
      it { integer_calc(" * ", 1, 2).should == 2 }
      it { integer_calc(".fdiv ", 1, 2).should == 0.5 }
    end
  end
  
  describe "generator" do
    include Practice::Generator
    let(:p) { FactoryGirl.build(:preference) }
    let(:list) { generate(p) }
    it { list.should be_a Array }
    it { list.size.should ==  p.size }
  end
  
end
