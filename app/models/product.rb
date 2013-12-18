class Product < ActiveRecord::Base
	belongs_to:store
	has_many :orders
	has_many :customers, :through => :orders
	has_many :posts, :dependent => :destroy

	validates :details, presence: true	# validates that address cannot be null 
	validates :developer, presence: true	# validates that county cannot be null
	validates :price, presence: true	# validates that phone_number cannot be null
	validates :age, presence: true	# validates that address cannot be null 
	validates :trailer, presence: true	# validates that county cannot be null
 
 
	validate :must_haveValidTrailer
	
	 def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['details LIKE  ?', search_condition])
	end
	 
	 
	 def must_haveValidTrailer
	  unless trailer.include?("<iframe")
	   errors.add(:trailer, "Must include an iframe tag")
	 end

  end
end
