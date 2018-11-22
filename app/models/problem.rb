class Problem < ApplicationRecord
	validates :title, presence: true
	has_many :sites
end
