class Update < ApplicationRecord
    validates_presence_of :body, :user_id

    belongs_to :user

    default_scope -> { order(created_at: :desc) }
end