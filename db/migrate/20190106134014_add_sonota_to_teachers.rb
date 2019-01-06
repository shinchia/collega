class AddSonotaToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :sonota, :string
  end
end
