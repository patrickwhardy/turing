require 'pry'
module And
  class Double
    attr_accessor :input_a, :input_b
    def initialize
      @input_a=0
      @input_b=0
    end
    def output
      if input_a == input_b
        if input_a == 0
          0
        else
          1
        end
      else
        0
      end
    end
  end
  class Triple
    attr_accessor :input_a, :input_b, :input_c
    def initialize
      @input_a=0
      @input_b=0
      @input_c=0
    end

    def output
      if input_a == input_b
        if input_a == input_c
          if input_a == 0
          0
          else
          1
          end
        else
          0
        end
      else
        0
      end
    end
  end
  class Multi
    def initialize(n)
      double = And::Double.new
      @input_a = double.input_a
      @input_b = double.input_b
      chars = ["c".."z"]
      (n-2).times do |n|
        char = chars[n]
        @input_+'char' = 0
      end
      binding.pry
    end

  end
end
