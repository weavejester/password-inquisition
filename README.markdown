Password Inquisition
====================

_Password Inquisition_ is a Ruby library that will put your passwords 
through a gauntlet of tests to see if they will crack under the
pressure.

Usage
-----

    require 'password-inquisition'

    Inquisition.check_password("password").strength
    => :weak

    Inquisition.check_password("87sfH&xmbds7!sJI").strength
    => :very_strong
