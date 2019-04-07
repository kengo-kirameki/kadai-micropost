class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content,presence: true,length:{maximum: 255}
  
  has_many :reverses_of_relation,class_name: 'Relation',foreign_key: 'like_id'
  
end
