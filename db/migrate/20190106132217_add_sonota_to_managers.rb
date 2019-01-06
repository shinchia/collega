class AddSonotaToManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :managers, :sonota, :string
  end
end
