class Show < ActiveRecord::Base 

    def Show::highest_rating
        Show.maximum(:rating)
    end
    
    def Show::most_popular_show
        Show.find_by rating: Show.highest_rating
        #highest_rating: SELECT  "shows".* FROM "shows" WHERE (highest_rating = 1) LIMIT ?
        #highest_rating method as a helper method.
    end

    def Show::lowest_rating
        Show.minimum(:rating)
    end

    def Show::least_popular_show
        Show.find_by rating: Show.lowest_rating
        #returns the show with the 
        #lowest rating.
    end
            
    def Show::ratings_sum
        Show.sum(:rating)
        #returns the sum of all of the ratings. 
    end 
    
    def Show::popular_shows
        Show.where("rating > 5")
        #returns an array of all of the shows 
        #that have a rating greater than 5.#hint: use the where Active Record method.
    end
   
    def Show::shows_by_alphabetical_order
       Show.order(:name, :asc)
        #returns an array 
        #of all of the shows sorted by alphabetical order
        #according to their names. hint: use the order 
        #Active Record method.Client.order(created_at: :asc)
    end
end
