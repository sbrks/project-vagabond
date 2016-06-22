class AddUsersIdAndCitiesIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cities_id, :integer
    add_column :posts, :users_id, :integer
  end
end
