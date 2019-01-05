class AddSummryToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :summry, :string
  end
end
