class AddImageToCities < ActiveRecord::Migration
  def change
    add_column :cities, :sigil_image, :string
  end
end
