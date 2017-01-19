class Customer < ApplicationRecord
	has_many :tasks
	has_many :developers, :through => :tasks
end
