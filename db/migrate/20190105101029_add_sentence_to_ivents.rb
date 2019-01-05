class AddSentenceToIvents < ActiveRecord::Migration[5.2]
  def change
    add_column :ivents, :sentence, :string
  end
end
