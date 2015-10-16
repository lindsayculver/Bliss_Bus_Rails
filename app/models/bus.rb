class Bus < ActiveRecord::Base
  validates :name,
  :presence => {:message => "This can't be blank."}
end
