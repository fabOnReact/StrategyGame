class Project < ApplicationRecord
	belongs_to :developer
	belongs_to :customer
end
