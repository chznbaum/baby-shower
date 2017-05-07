class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable
    belongs_to :user
    has_many :likes, as: :likeable

    validates_presence_of :body, :user_id
end
