class Developer < ApplicationRecord
	has_many :tasks
	has_many :customers, :through => :tasks	
end
