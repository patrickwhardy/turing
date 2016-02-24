class Engine
  def core_weight
    250
  end

  def propeller_weight
    50
  end

  def engine_weight
    core_weight + propeller_weight
  end
end

class Plane
  attr_reader :engine

  def initialize
    @engine = Engine.new
  end

  def body_weight
    1000
  end

  def engine_count
    2
  end

  def total_weight
    body_weight + engine_count * engine.engine_weight
  end
end

dusty = Plane.new
dusty.total_weight

#################
#################

class Engine
  attr_reader :engines_running

   def initialize
     @engines_running = false
   end

     def start
       @engines_running.each do |e|
         Engine.new = true
     end
end

class Plane
  def initialize(engine_count = 4)
    @engines = engine_count.times.map
      Engine.new
    end
  end

  def start_engines
    engines.each. do |e|
      e.start
    end
  end
end

dusty = Plane.new
dusty.start_engines

##############################
##############################

class Plane
  attr_reader :engines, :running

  def initialize
    @engines = Array.new(4){ Engine.new }
    #@engines = 4.times.map { Engine.new }
  end

  def start_all
    @running = true
  end
end

class Engine
  def running?
    plane.running
  end
end

dusty = Plane.new
dusty.engines.each{|e| e.start}
