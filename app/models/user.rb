class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 3 }
end





# create_table "users", force: :cascade do |t|
#   t.string   "name"
#   t.string   "email"
#   t.string   "password_digest"
#   t.datetime "created_at",      null: false
#   t.datetime "updated_at",      null: false
# end
