# require 'spec_helper'

# # we use "describe <class>" to start writing tests
# describe Product do

#   # we then write examples (specifications) in our describe block using an it-do-end syntax
#   it "must have a name" do
    
#     # we instantiate a product object and assign it to "product"
#     product = Product.new

#     ## we can use "should" to expect a value
#     product.name.should == nil

#     ## we can use "should_not" to expect any except a value
#     product.name.should_not == "something" 

#     #be_valid runs the predicate matcher be_valid which is going to call the ActiveRecord valid? method
#     product.should_not be_valid
#   end
# end

require 'spec_helper'

describe Product do
  let!(:product) { Product.create }

  it 'must have a description' do
  product.description = "Candy"
  product.should be_valid
  end

  it 'must have a name' do
  #Act on the object of the method udner spec
  product.name = ""
  product.should_not be_valid
  end

  it 'must have a price_in_cents' do
  product.price_in_cents = ""
  product.should_not be_valid
  end

  it 'must have a price_in_cents' do
  product.price_in_cents = "20"
  product.should_not be_valid
  end

  # it 'price must be an integer' do
  # product.price_in_cents.is_a? 


end