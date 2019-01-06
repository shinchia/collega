class AddJobToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :job, :string
  end
end
