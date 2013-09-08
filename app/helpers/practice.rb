module Practice
  module Operator
    def operators
      { :add => [" + ", " + "],
        :subtract => [" - ", " - "],
        :multiply => [" x ", " * "],
        :divide => [" ÷ ", ".fdiv "],
       }
    end
    def operator(name, html=true)
      op = operators[name.to_sym]
      raise "operator not found" unless op
      html ? op.first : op.last
    end
    
  end
  
  module Calculation
    private
    def integer_calc(operator, a, b)
      if operator == "÷/"
        str = eval(a.to_s + "/" + b.to_s).to_s + ", "
        str += eval(a.to_s + "%" + b.to_s).to_s
        return str
      end
      eval(a.to_s + operator + b.to_s)
    end
  end
  
  module Generator
    include Operator
    MAX_TRY = 10
    # todo: handle divide by 0 for division
    def generate(preference)
      @@preference = preference
      eval(preference.type+"_generator")
    end
    private
    def integer_generator
      qs = []
      try = 0
      p = @@preference
      (0...p.size).each do
        rand_op = p.rand_operator
        op = operator(rand_op, false)
        n1 = p.rand_field(0)
        n2 = p.rand_field(1)
        q = Question.new(p.type)
        q.insert(n1, rand_op).insert(n2)
        qs << q
      end
      qs
    end
  end
end