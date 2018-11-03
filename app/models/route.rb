class Route < ApplicationRecord
  belongs_to :district
  belongs_to :time_table
  has_and_belongs_to_many :stations
  has_and_belongs_to_many :buses
  has_many :requests 
  has_many :users, :through => :requests
  
  
end
