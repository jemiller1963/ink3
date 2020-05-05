class Hangout < ApplicationRecord
  has_many :hangout_users
  has_many :users, through: :hangout_users
  has_many :messages

end
