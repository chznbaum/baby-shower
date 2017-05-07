class Update < ApplicationRecord
    validates_presence_of :body, :user_id

    belongs_to :user
    has_many :comments, as: :commentable
    has_many :likes, as: :likeable

    default_scope -> { order(created_at: :desc) }
end