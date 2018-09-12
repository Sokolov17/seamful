class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :reviews
  has_many :restaurants, through: :orders
  validates :email, uniqueness: true
  validates :email, presence: true

  def fullname
    "#{self.first_name} #{self.last_name}"
  end

end
