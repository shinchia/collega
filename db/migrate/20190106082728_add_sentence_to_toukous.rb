class AddSentenceToToukous < ActiveRecord::Migration[5.2]
  def change
    add_column :toukous, :sentence, :string
  end
end
