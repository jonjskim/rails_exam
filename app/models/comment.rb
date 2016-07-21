class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  validates :content, presence: true, length: { in: 2..10000 }
end
