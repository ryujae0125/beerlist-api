class Beer < ActiveRecord::Base
  validates :name, :style, presence :true
end
