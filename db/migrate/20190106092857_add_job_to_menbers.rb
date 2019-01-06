class AddJobToMenbers < ActiveRecord::Migration[5.2]
  def change
    add_column :menbers, :job, :string
  end
end
