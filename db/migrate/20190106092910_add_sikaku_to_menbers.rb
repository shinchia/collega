class AddSikakuToMenbers < ActiveRecord::Migration[5.2]
  def change
    add_column :menbers, :sikaku, :string
  end
end
