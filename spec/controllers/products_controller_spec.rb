require 'spec_helper'

describe ProductsController do
  xit 'should return 200 from index' do
    get :index
    expect(response.status).to eq(200)
  end

    xit 'should grab all products from the database' do
      product = Product.new
      get :index
      expect(assigns[:products]).to eq(product)
  end
  
  describe 'POST create' do
      product = Product.new
    xit 'should create a new product' do
      post :create, product: {name: 'a name', description: 'description'}
      expect(Product.all.length).to eq(1)
    end
  end


end