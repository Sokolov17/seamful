class User < ApplicationRecord
  before_create :confirmation_token
  has_secure_password
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :restaurants, through: :orders
  validates :email, uniqueness: true, presence: true
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows english letters" }, :length => { :minimum => 3, :maximum => 20}
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows english letters" }, :length => { :minimum => 3, :maximum => 20}
  validates :city_name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows english letters" }, :length => { :minimum => 4, :maximum => 25}
  validates :state, format: { with: /\A[a-zA-Z]+\z/, message: "only allows english letters" }, :length => { :minimum => 4, :maximum => 30}
  validates :zipcode, presence: true, :numericality => true, :length => { :minimum => 6, :maximum => 8}
  validates :credit_card_num, :numericality => true, :length => { :minimum => 6, :maximum => 120}
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

  def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)
  end

  private
  def confirmation_token
      if self.confirm_token.blank?
         self.confirm_token = SecureRandom.urlsafe_base64.to_s
      end
  end

end #END USER CLASS
