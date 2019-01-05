class AddImageNameToIvents < ActiveRecord::Migration[5.2]
  def change
    add_column :ivents, :image_name, :string
  end
end
