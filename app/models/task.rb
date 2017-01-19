class Task < ApplicationRecord
	belongs_to :customer
	belongs_to :developer
end
