class Post < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments, dependent: :destroy

  def self.all_cached
   Rails.cache.fetch('Post.all') { includes(comments: :replies) }
 end
end
