class AddTitleToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :title, :string
    add_column :movies, :year_released, :integer
    add_column :movies, :star_ratting, :integer
  end
end
