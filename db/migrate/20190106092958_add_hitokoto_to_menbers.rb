class AddHitokotoToMenbers < ActiveRecord::Migration[5.2]
  def change
    add_column :menbers, :hitokoto, :string
  end
end
