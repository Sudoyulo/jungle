require 'rails_helper'

RSpec.describe Product, type: :model do
  
  describe 'Validations' do
    # validation tests/examples here

    context "product" do
      it "saves succesfully when all fields are set" do
        @category = Category.create(
          name: "books"
          )
          @product = Product.create(
            name: "Harry Potter",
            price: 300,
            quantity: 100,
            category: @category
          )
          expect(@product.errors.full_messages).to be_empty
      end
    end


    context "product" do
      it "requires name" do
        @category = Category.create(
        name: "books"
        )
        @product = Product.create(
          price: 300,
          quantity: 100,
          category: @category
        )
        expect(@product.errors.full_messages).to include("Name can't be blank")
      end
    end

    context "product" do
      it "requires price" do
        @category = Category.create(
        name: "books"
        )
        @product = Product.create(
          name: "Harry Potter",
          quantity: 100,
          category: @category
        )
        expect(@product.errors.full_messages).to include("Price can't be blank")
      end
    end
    
    context "product" do
      it "requires quantity" do
        @category = Category.create(
        name: "books"
        )
        @product = Product.create(
          name: "Harry Potter",
          price: 300,
          category: @category
        )
        expect(@product.errors.full_messages).to include("Quantity can't be blank")
      end
    end
    
    context "product" do
      it "requires category" do
        @category = Category.create(
        name: "books"
        )
        @product = Product.create(
          name: "Harry Potter",
          price: 300,
          quantity: 100,
        )
        expect(@product.errors.full_messages).to include("Category can't be blank")
      end
    end
    
  end
end
