class StringCalculator

  def self.add(input)
    return 0 if input.empty?
    input = input.split(',').map(&:to_i)
    input.sum
  end
end