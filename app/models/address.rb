class Address < ApplicationRecord
	validates :area, presence: true
	validates :city, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
	validates :state, presence: true, format: { with: /\A[a-zA-Z]+\z/ }
	validates :pin, presence: true, format: { with: /\A[0-9]+\z/ }, length: { is: 6 }
end
