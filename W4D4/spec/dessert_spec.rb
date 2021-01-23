require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", :titleize => "Chef Francois the Great Baker") }
  let(:dess) {Dessert.new("A type", 10, chef)}
  


  describe "#initialize" do

    it "sets a type" do 
      expect(dess).to_not eq(nil)
    end

    it "sets a quantity" do 
      expect(dess.quantity).to_not eq (nil)
    end
    it "starts ingredients as an empty array" do 
      expect(dess.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("A type", '.1', chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      dess.add_ingredient("Apple")
      expect(dess.ingredients.first).to eq("Apple")
    end
      
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ings= ["A","B","C", "D"]
      ings.each {|i| dess.add_ingredient(i) }
      dess.mix!
      expect(dess.ingredients).to_not eq(ings)
    end
    
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      expect(dess.eat(2)).to eq(8)
    end


    it "raises an error if the amount is greater than the quantity" do 
      expect { dess.eat(20)}.to raise_error("not enough left!")
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      # allow(chef).to receive(:titleize).and_return("Francois")
      expect(dess.serve.split(" ")[0..4].join(" ")).to eq("Chef Francois the Great Baker")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      allow (chef).to receive(:bake) 
    end

  end


  

end
