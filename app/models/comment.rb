class Comment < ActiveRecord::Base
  belongs_to :interest
  belongs_to :user
  validates :saying, presence: true, length: {maximum: 500}
  validates :user_id, presence: true
  validates :interest_id, presence: true
end
