# pragma version ^0.4.0
# @ license: MIT  

vyper_greeting: public(String[20])

@deploy
def __init__():

    self.vyper_greeting = "Vyper says hello!"
