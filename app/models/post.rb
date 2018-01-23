class Post < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5, maximum: 60 }
	validates :content, presence: true
end
