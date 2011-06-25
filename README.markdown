Password Inquisition
====================

_Password Inquisition_ is a Ruby library that will put your passwords 
through a gauntlet of tests to see if they will crack under the
pressure.

Usage
-----

    require 'password-inquisition'

    inquisition = Inquisition::Default.new
    inquisition.test("password").strength
    => :weak

    inquisition.test("87sfH&xmbds7!sJI").strength
    => :very_strong
