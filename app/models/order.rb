class Order < ActiveRecord::Base
	belongs_to :product #
	belongs_to:customer #one 

 
    validate :dateordered_cannot_be_in_the_past #makes sure you cant order in the past 
   
  def dateordered_cannot_be_in_the_past
    errors.add(:dateOrdered, "can't be in the past") if
      !dateOrdered.blank? and dateOrdered < Date.today
 end
end
