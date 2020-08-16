class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    highest_rating = self.highest_rating
    Show.find_by(rating: highest_rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    lowest_rating = self.lowest_rating
    Show.find_by(rating: lowest_rating)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    #rating_above_5 = []
    #Show.all each do |show|
      #if show.rating > 5
        #rating_above_5 << show
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order(name: :asc)
  end
end
