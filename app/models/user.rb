class User < ApplicationRecord
	validates :email, presence: true, uniqueness:true, format: { with: /\A[A-Za-z0-9\W]+*@[A-Za-z0-9\W]+[.][a-z]+\z/, message:'Invlid mail' }
	validates :name, presence: true, format: { with: /\A[A-Za-z]* [A-Za-z]*+\z/, message: 'Full name'}
	validates :password, presence: true, format: { with: /(?=.*[a-z])(?=.*[A-z])(?=.*[0-9])(?=.*\W)/, message: 'Not strong password' }
	validates :dob, presence: true
	validates :gender, presence: true, format: { with: /\AMale\z|\AFemale\z/, message: 'Only Female/Male allowed' }
end
