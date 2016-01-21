class Interest < ActiveRecord::Base
  has_many :comments
  has_many :lists
  belongs_to :user
  validates :content, presence: true

end
