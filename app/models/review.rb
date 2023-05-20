class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :rating, presence: true
  validates :content, length: {minimum: 10, too_short: "You must have at least 10 characters in your review."}

  def self.most_reviews_by_user
    @user = User.find(Review.group('user_id').order('COUNT(*) DESC').select('user_id').limit(1)[0].user_id)
  end


end
