class User < ActiveRecord::Base
	BCrypt::Engine.cost = 12

	has_many :posts

	#validations
	validates :email, presence: true, uniqueness: true
	
	has_secure_password

	def self.confirm(email, password)
		user = User.find_by_email(email)
		user.authenticate(password)
	end






end
