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
        expect(StringCalculator.add("1,\n")).to eq(1)
      end
      it "should return sum of numbers" do
        expect(StringCalculator.add("1, 2, 3, 4")).to eq(10)
      end
    end
  end
end