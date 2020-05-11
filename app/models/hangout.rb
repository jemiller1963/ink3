class Hangout < ApplicationRecord
  has_many :hangout_users, dependent: :destroy
  has_many :users, through: :hangout_users
  has_many :messages, dependent: :destroy

  validates :name, presence: true
end
