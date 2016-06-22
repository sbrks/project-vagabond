class User < ActiveRecord::Base
	has_many :posts

	BCrypt::Engine.cost = 12


	#validations
	validates :email, presence: true, uniqueness: true
	validates :username, presence: true, uniqueness: true

	has_secure_password

	def self.confirm(email, password)
		user = User.find_by_email(email)
		user.authenticate(password)
	end



end
