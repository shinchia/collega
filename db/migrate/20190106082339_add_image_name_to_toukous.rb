class AddImageNameToToukous < ActiveRecord::Migration[5.2]
  def change
    add_column :toukous, :image_name, :string
  end
end
