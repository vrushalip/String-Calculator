class StringCalculator
  class << self
    def add(input)
      return 0 if input.empty?
      return 'Invalid Input' if is_input_invalid?(input)
      delimiters = delimiters(input)
      input = input.split(delimiters).map(&:to_i)
      negative_numbers = input.select(&:negative?)
      return "negative numbers not allowed #{negative_numbers.join(",")}" unless negative_numbers.empty?
      input.sum
    end
  
    def delimiters(input)
      formatted_input = input.scan(/[^\n]+/)
      delimiters = formatted_input.first.match(/\/\/(.+)/)
      delimiters.nil? ? /[\n,]+/ : delimiters[1]
    end
  
    def is_input_invalid?(input)
      input.each_char.with_index.any? { |c,i| c.match(/[\n,]/) && input[i+1].match(/[\n,]/) }
    end
  end
end