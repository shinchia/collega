class AddImageNameToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :image_name, :string
  end
end
