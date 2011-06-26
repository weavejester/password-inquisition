Password Inquisition
====================

_Password Inquisition_ is a Ruby library that will put your passwords 
through a gauntlet of tests to see if they will crack under the
pressure.

**Note: Current a work in progress - nothing works yet**

Usage
-----

Create a new inquisition using the `Inquisition::Default` class:

    require 'password-inquisition'
    inquisition = Inquisition::Default.new

Use your inquisition to test the strength of passwords:

    inquisition.test("password").strength
    => :weak

    inquisition.test("87sfH&xmbds7!sJI").strength
    => :very_strong

If you want to add additional rules, you can easily do so:

    inquisition.security(:good) do |password|
      rule("should not contain the username") do
        not password.includes?(params[:username])
      end
    end

If a password is to be considered "good", then it must not contain the
username.

Author
------

James Reeves (jreeves@weavejester.com)
