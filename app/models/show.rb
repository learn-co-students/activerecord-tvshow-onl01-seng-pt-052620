class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    # binding.pry
    Show.where(rating: Show.highest_rating).take
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    Show.where(rating: Show.lowest_rating).take
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.order(:rating).last(2).reverse
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end