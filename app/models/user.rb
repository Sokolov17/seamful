class User < ApplicationRecord
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :restaurants, through: :orders
  validates :email, uniqueness: true
  validates :email, presence: true,




  def fullname
    "#{self.first_name} #{self.last_name}"
  end

  def self.num_current_users
    User.all.count
  end

  def self.newest
    last
  end

end #END USER CLASS
