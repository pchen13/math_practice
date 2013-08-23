class Preference
  attr_accessor :inputs, :operators, :type, :size, :title
  def rand_field(number)
    rand(inputs[number][0]..inputs[number][1]) if inputs.to_a.size > number
  end
  def rand_operator
    op_size = operators.to_a.size
    if op_size == 1
      operators.first
    elsif op_size > 1
      operators[rand(0..op_size-1)]
    else
      "add"
    end
  end
end