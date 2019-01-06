class AddHitokotoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :hitokoto, :string
  end
end
