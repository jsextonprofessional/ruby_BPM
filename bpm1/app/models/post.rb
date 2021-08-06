class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }

  belongs_to :blog
  has_many :messages, dependent: :destroy

  # after_destroy :destroy_messages

  # private

  # def destroy_messages
  #   self.messages.destroy_all
  # end
end
