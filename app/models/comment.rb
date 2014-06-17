class Comment < ActiveRecord::Base

  validates :author, :length => { maximum: 20 }
  validates :content, :length => { maximum: 400 } 

  belongs_to :post

end
