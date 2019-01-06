class AddImageNameToMenbers < ActiveRecord::Migration[5.2]
  def change
    add_column :menbers, :image_name, :string
  end
end
