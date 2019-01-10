class Post < ApplicationRecord
  belongs_to :topic
  validates :user_id, {presence: true}
end
