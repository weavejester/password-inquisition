require File.expand_path("../../spec_helper.rb", __FILE__)
require 'password-inquisition/base'

describe Inquisition::Base do
  describe ".new" do
    it "accepts a block to be instance_eval'd" do
      Inquisition::Base.new do
        self.class.should == Inquisition::Base
      end
    end
  end
  
  describe "#security" do
    it "creates a security group" do
      Inquisition::SecurityGroup.should_receive(:new).with(:fair)
      subject.security(:fair) {}
    end
  end
end
