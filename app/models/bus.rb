class Bus < ActiveRecord::Base
  has_many :posts
  validates :name,
  :presence => {:message => "This can't be blank."}
end
