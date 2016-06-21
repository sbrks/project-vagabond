class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.references :posts, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
