class Customer < ActiveRecord::Base
	has_secure_password
	has_many :orders
	has_many :products, :through => :orders
	has_many :posts, :dependent => :destroy
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

	validates :name, presence: true	# validates that first name cannot be null 
 
	validates :address, presence: true	# validates that address cannot be null
	validates :emailAddress, presence: true	# validates that email cannot be null
	validates :phoneNumber, presence: true	# validates that phone_number cannot be null
	validates :emailAddress, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}  # make sure its unique 

end
