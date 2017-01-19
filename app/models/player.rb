class Player < ApplicationRecord
	has_many :games
	has_and_belongs_to_many :alliances
	scope :details, lambda {|king| 
		where(["king like ?", king])
	}
end  
