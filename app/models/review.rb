class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  def self.most_reviews_by_user
    @user = User.find(Review.group('user_id').order('COUNT(*) DESC').select('user_id').limit(1)[0].user_id)
  end


end
