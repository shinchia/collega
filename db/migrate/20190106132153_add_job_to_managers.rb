class AddJobToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :job, :string
  end
end
