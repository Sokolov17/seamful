class User < ApplicationRecord
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :restaurants, through: :orders
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :credit_card_num, length: {is: 16}


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
