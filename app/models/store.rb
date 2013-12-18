class Store < ActiveRecord::Base
	has_many :products 
	validates :address, presence: true	# validates that address cannot be null 
	validates :county, presence: true	# validates that county cannot be null
	validates :phoneNumber, presence: true	# validates that phoneNumber cannot be null
	
		geocoded_by :address
	after_validation :geocode, :if => :address_changed?
  
end
