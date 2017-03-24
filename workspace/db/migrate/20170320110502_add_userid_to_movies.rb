class AddUseridToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :userid, :integer
  end
end
