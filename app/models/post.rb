class Post < ActiveRecord::Base
  belongs_to :users
  belongs_to :cities
end
