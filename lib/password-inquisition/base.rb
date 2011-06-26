require 'password-inquisition/security_group'

module Inquisition
  class Base
    def initialize
      @security_groups = Hash.new do |hash, label|
        hash[label] = SecurityGroup.new(label)
      end
    end
    
    def security(label, &block)
      group = @security_groups[label]
      group.instance_eval(&block) if block_given?
    end
    
    def test(password)
      nil
    end
  end
end
