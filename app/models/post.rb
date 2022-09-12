class Post < ApplicationRecord
    belongs_to :user

    validates :subject, presence: true
    validates :body, presence: true
    validates :user_id, presence: true
end
