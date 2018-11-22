class Site < ApplicationRecord
	validates :name, uniqueness: true
	belongs_to :problems
end
