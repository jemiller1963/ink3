class Note < ApplicationRecord
  belongs_to :user

  scope :that_are_active, -> {where('active = ?', true).order('created_at DESC')}
end
