class Guest < ApplicationRecord
    has_many :comments
    has_many :bookings
    has_many :rooms, through: :bookings

    validates :username, :email, :bio, :age, :gender, presence: true

    validates :password, presence: true, confirmation: true, length: {within: 6..20}, on: :create
    validates :password, confirmation: true, length: {within: 6..20}, allow_blank: true, on: :update
    
    has_secure_password
end
