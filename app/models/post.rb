class Post < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments
  
  validates :image, presence: true
  has_attached_file :image,
                    styles: { medium: '600x', thumb: '100x100>'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :user_id, presence: true
  validates :title, presence: true,
  					length: {minimum:3, maximum: 60}

end
