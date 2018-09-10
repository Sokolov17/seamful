class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_one :menuorder 
end
