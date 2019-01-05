class AddSummryToIvents < ActiveRecord::Migration[5.2]
  def change
    add_column :ivents, :summry, :string
  end
end
