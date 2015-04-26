class List < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(title: :asc) }
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 60 }
end
