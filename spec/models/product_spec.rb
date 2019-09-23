require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    cat1 = Category.find_or_create_by! name: 'Apparel'
    product = cat1.products.new(name: 'Fancy Hat', price: 1000, quantity: 3)

    it "requires a name to be saved" do
      expect(product.name).to eq('Fancy Hat')
    end
    it "requires a price to be saved" do
      expect(product.price).to eq(1000)
    end
    it "requires a quantity to be saved" do
      expect(product.quantity).to eq(3)
    end
    it "belongs to the right category" do
      expect(product.category.name).to eq('Apparel')
    end


  end
end
