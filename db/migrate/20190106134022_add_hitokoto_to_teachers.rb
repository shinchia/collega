class AddHitokotoToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :hitokoto, :string
  end
end
