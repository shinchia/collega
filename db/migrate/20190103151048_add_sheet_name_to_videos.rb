class AddSheetNameToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :sheet_name, :string
  end
end
