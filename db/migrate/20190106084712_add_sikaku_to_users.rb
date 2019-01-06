class AddSikakuToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sikaku, :string
  end
end
