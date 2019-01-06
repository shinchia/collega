class AddSummryToToukous < ActiveRecord::Migration[5.2]
  def change
    add_column :toukous, :summry, :string
  end
end
