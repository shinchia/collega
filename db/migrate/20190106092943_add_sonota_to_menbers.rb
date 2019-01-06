class AddSonotaToMenbers < ActiveRecord::Migration[5.2]
  def change
    add_column :menbers, :sonota, :string
  end
end
