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
    def integer_cal(operator, a, b)
      if operator == "÷/"
        str = eval(a.to_s + "/" + b.to_s).to_s + ", "
        str += eval(a.to_s + "%" + b.to_s).to_s
        return str
      end
      eval(a.to_s + operator + b.to_s)
    end
  end
  
end