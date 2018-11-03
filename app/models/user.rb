class User < ApplicationRecord
  belongs_to :rol
  has_many :requests 
  has_many :routes, :through => :requests
end
