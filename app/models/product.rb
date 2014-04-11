class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true

end
