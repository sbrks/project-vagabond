class User < ActiveRecord::Base
	has_many :posts

	BCrypt::Engine.cost = 12
	# paperclip stuffs for ben
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	#validations
	validates :email, presence: true, uniqueness: true
	validates :username, presence: true, uniqueness: true

	has_secure_password

	def self.confirm(email, password)
		user = User.find_by_email(email)
		user.authenticate(password)
	end



end
