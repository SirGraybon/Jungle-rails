require 'rails_helper'
require_relative "../../app/models/product"
require_relative "../../app/models/category"


# puts ActiveRecord::Base.connection_db_config.inspect 


RSpec.describe Product, type: :model do
  before do
    @test_category = Category.new :name => "test"

  end


  describe 'Validations' do
    context "" do
      it "returns true -- happy path!!" do
        a_test = Product.new :name => "A", :price => 19.99, :quantity => 5
        a_test.category = @test_category
        puts a_test.name
        puts a_test.price
        puts a_test.quantity
        puts a_test.category
          
        expect(a_test.valid?).to be true
      end
   

      it "returns error due to no quantity" do
        a_test = Product.new :name => "A", :price => 19.99
        a_test.category = @test_category
        puts a_test.name
        puts a_test.price
        puts a_test.quantity
        puts a_test.category
          
        expect(a_test.valid?).to be false
      end
   

      it "returns error due to no price" do
        a_test = Product.new :name => "A", :quantity => 5
        a_test.category = @test_category
        puts a_test.name
        puts a_test.price
        puts a_test.quantity
        puts a_test.category
          
        expect(a_test.valid?).to be false
      end
   

      it "returns error due to no name" do
        a_test = Product.new  :price => 19.99, :quantity => 5
        a_test.category = @test_category
        puts a_test.name
        puts a_test.price
        puts a_test.quantity
        puts a_test.category
          
        expect(a_test.valid?).to be false
      end


      it "returns error due to no category" do
        a_test = Product.new  :price => 19.99, :quantity => 5

        puts a_test.name
        puts a_test.price
        puts a_test.quantity
        puts a_test.category
          
        expect(a_test.valid?).to be false
      end


    end
  end
end
