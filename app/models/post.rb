class Post < ActiveRecord::Base
  belongs_to :users
  belongs_to :cities

  #validations
  validates :title, presence: true
  validates :description, length: { in: 1..200 }
end
