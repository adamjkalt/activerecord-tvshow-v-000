class Show < ActiveRecord::Base

  def self.highest_rating
  rating = self.maximum(:rating)
  end

  def self.most_popular_show
    Show.where("rating = ?", self.highest_rating)[0]
  end

  def lowest_rating
    rating = self.minimum(:rating)
  end

  def least_popular_show
  # returns the show with the lowest rating.
  end

  def ratings_sum
  # returns the sum of all of the ratings.
  end

  def popular_shows
  # returns an array of all of the shows that have a rating greater than
  # 5. hint: use the where Active Record method.
  end

  def shows_by_alphabetical_order
  # returns an array of all of the shows sorted by alphabetical order according to
  # their names. hint: use the order Active Record method.
  end


end
