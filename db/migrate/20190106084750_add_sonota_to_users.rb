class AddSonotaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sonota, :string
  end
end
