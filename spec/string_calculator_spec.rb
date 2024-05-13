require "string_calculator"

describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "should return zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given any amount of numbers" do
      it "should return number" do
        expect(StringCalculator.add("1")).to eq(1)
      end
      it "should return sum of numbers" do
        expect(StringCalculator.add("1, 2, 3, 4")).to eq(10)
      end
    end

    context 'multiple delimiters' do
      it "should handle new lines between numbers" do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
      it 'should return input is invalid' do
        expect(StringCalculator.add("1,\n")).to eq('Invalid Input')
      end
      it "should support multiple delimiters" do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
      it "should throw error for negative numbers" do
        expect(StringCalculator.add("//;\n-1;2;-3;-4")).to eq('negative numbers not allowed -1,-3,-4')
      end
    end
  end
end