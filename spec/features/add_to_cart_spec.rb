require 'rails_helper'

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see all products" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
 
    find('.btn-primary', match: :first).click

    sleep 4

    # expect(page).to have_content 'Quantity' 

    # text = page.find(:css, "a[href='/cart']")

    expect(page).to have_content 'My Cart (1)' 
   
    
    
   

  end

end
