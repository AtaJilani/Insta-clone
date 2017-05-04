class Post < ActiveRecord::Base  
  validates :image, presence: true
  belongs_to :user  

  has_attached_file :image,default_url:"/image/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :user_id, presence: true  


end  
