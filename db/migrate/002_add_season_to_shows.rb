class AddSeasonToShows < ActiveRecord::Migration[5.2]
    def change
      add_column :shows, :season, :string
    end
end
#write a migration to add a column, 
# add a column, season(with a string datatype),
#to the shows table 
#This lab is using ActiveRecord 5.2. 
#You will need to specify this version 
#in your migrations by having your classes 
#inherit from ActiveRecord::Migration[5.2].