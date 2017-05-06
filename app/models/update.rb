class Update < ApplicationRecord
    validates_presence_of :body, :user_id

    belongs_to :user
    has_many :comments, as: :commentable

    default_scope -> { order(created_at: :desc) }
end