class User < ApplicationRecord
  has_secure_password
  
  belongs_to :rol
  has_many :requests 
  has_many :routes, :through => :requests
end
