class User < ActiveRecord::Base
	has_many :posts

		#paperclip
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


	BCrypt::Engine.cost = 12


	#validations
	validates :email, presence: true, uniqueness: true

	has_secure_password

	def self.confirm(email, password)
		user = User.find_by_email(email)
		user.authenticate(password)
	end

	validates :username, presence: true, uniqueness: true






end
