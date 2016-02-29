require 'pry'
class StateCapitals
  def initialize
    @states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

    @capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}
  end

  def capital(state)
    capital = @capitals[@states[state]]
    if capital == nil
      "Unknown"
    else
      capital
    end
  end

  def state(state)
    @states.key(@capitals.key(state))
  end


end
