class Sale < ApplicationRecord
	validates :cod, uniqueness: true
end
