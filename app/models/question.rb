class Question
  include Practice::Calculation
  extend Practice::Operator
  attr_accessor :fields, :operators, :type
  
  def initialize(type)
    @fields = []
    @operators = []
    @type = type
  end
  
  def insert(input, operator = nil)
    @fields << input
    if !operator.nil?
      @operators << operator.strip
    end
    self
  end
  
  def title
    @fields.each_with_index.inject("") do |str, (field, idx)|
      op = @operators[idx]
      str + field.to_s + (op.nil? ? "" : Question.operator(op))
    end
  end
  
  def answer
    raise "incorrect type" unless Question.types.include?(@type)
    f = @fields.dup
    f.each_with_index.inject(f.shift) do |result, (val, idx)|
      op = @operators[idx]
      send(@type+"_calc", Question.operator(op, false), result, val)
    end
  end
  
  def to_s
    title + " = " + answer.to_s
  end
  
  def self.types
    ["integer", "fraction"]
  end
end