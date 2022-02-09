require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
   # SETUP
   before :each do
    @category = Category.create! name: 'Apparel'
    @category.products.create!(
    name:  Faker::Hipster.sentence(3),
    description: Faker::Hipster.paragraph(4),
    image: open_asset('apparel1.jpg'),
    quantity: 10,
    price: 64.99
    )
  end

  scenario "Item adds to cart" do
    # ACT
    visit root_path
    
    expect(page).to have_content('My Cart (0)')
  
    # VERIFY
    find('button.btn-primary').click
  
    expect(page).to have_content('My Cart (1)')
    
    # DEBUG
    save_screenshot
    
  end

end
