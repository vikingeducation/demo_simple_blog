class Post < ActiveRecord::Base

  validates :author, :length => { maximum: 20 }
  validates :content, :length => { maximum: 400 } 

end
