class Post < ActiveRecord::Base
 	
 	belongs_to :user

  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true

  #paperclip
  
  has_attached_file :image, style: { thumb: "150x150", medium: "300x300" ,large: "600x600"}
  validates_attachment_presence :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
