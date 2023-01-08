class Post < ApplicationRecord
  before_save :save_content
  has_many :comments 
  belongs_to :user

  def save_content
    user = User.pluck(:first_name).last 
    self.author_user = user
    self.published = true 
  end 
end
