class Task < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { maximum: 255 }
  validates :status, presence: true, length: { maximum: 255 }

end
