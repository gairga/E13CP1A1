class Sale < ApplicationRecord
	validates :cod, uniqueness: true
	validates :detail, presence: true
	validates :category, inclusion: { in: %w(uno dos tres cuatro cinco), message: "%{value} is not a valid size" }
  	validates :value, numericality: true
end
