require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    
    usr = User.new(name: 'Thomas', email: 'thomas@test.com', password: 'yala')

    it "requires a name" do
      expect(usr.name).to eq('Thomas')
    end
    it "requires a email" do
      expect(usr.email).to eq('thomas@test.com')
    end
    it "requires a password" do
      expect(usr.password.length).to be > 3
    end
    # it "belongs to the right category" do
    #   expect(product.category.name).to eq('Apparel')
    # end


  end
end
