require 'spec_helper'

describe Preference do
  let(:preference) { FactoryGirl.build(:preference) }
  context "rand_field" do
    it do
      preference.rand_field(1).should_not be_nil
    end
    it do
      preference.inputs = nil
      preference.rand_field(1).should be_nil
    end
  end
  
  context "rand_operator" do
    it do
      preference.operators.should be_include preference.rand_operator 
    end
    it do
      preference.operators = []
      preference.rand_operator.should == "add"
      preference.operators = nil
      preference.rand_operator.should == "add"
    end
    it do
      op = "estimate"
      preference.operators = [op]
      preference.rand_operator.should == op
    end
  end
end