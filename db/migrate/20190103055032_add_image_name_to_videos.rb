class AddImageNameToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :image_name, :string
  end
end
