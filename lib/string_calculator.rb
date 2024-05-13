class StringCalculator

  def self.add(input)
    return 0 if input.empty?
    is_input_invalid = input.each_char.with_index.any? { |c,i| c.match(/[\n,]/) && input[i+1].match(/[\n,]/) }
    return 'Invalid Input' if is_input_invalid
    input = input.split(/[,|\n]+/).map(&:to_i)
    input.sum
  end
end