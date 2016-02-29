class Capitals
  require 'pry'
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

  def state_capital(state)
    begin
      @capitals.fetch @states.fetch(state)
    rescue KeyError => err
      "unknown"
    end
      @capitals.fetch(@states.fetch(state))
  end

  def capital_state(capital)
    abbreviation = @capitals.key(capital)
    state = @states.key(abbreviation)
    state
  end

end
binding.pry
