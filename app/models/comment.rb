class Comment < ApplicationRecord
  before_save :save_content
  belongs_to :user
  belongs_to :post

  def save_content
    post = Post.pluck(:author_user).last 
    self.author  = post
  end 
end
