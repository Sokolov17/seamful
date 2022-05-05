class User < ApplicationRecord
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :restaurants, through: :orders
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: {minimum: 3}
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: {minimum: 2}
  validates :city_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: {minimum: 4}
  validates :state, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, length: {minimum: 4}
  validates :zipcode, presence: true, :numericality => true, :length => { :minimum => 6, :maximum => 8}
  validates :credit_card_num, :length => { :minimum => 6, :maximum => 120}
  validates :phone_num, presence: true, :numericality => true, :length => { :minimum => 10, :maximum => 15 }


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
