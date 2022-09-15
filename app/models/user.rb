class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :destroy
    has_many :comments

    validates_presence_of :email
    validates_uniqueness_of :email
    validates_uniqueness_of :username
end