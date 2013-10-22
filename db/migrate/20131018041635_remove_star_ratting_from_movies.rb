class RemoveStarRattingFromMovies < ActiveRecord::Migration
  def change
  	remove_column :movies, :star_ratting, :integer
  end
end
