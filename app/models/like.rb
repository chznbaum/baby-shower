class Like < ApplicationRecord
    attr_accessor :comment_id, :update_id
    belongs_to :likeable, polymorphic: true
    belongs_to :user

    validates :user_id, uniqueness: { scope: :likeable_id}
end