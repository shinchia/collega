class AddSikakuToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :sikaku, :string
  end
end
