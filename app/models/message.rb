class Message < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true, length: { in: 2..10000 }

  # def self.messages_with_user
  # 	self.joins(:user).select(:content, :name)
  # end
end
