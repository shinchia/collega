class CreateIvents < ActiveRecord::Migration[5.2]
  def change
    create_table :ivents do |t|
      t.text :content

      t.timestamps
    end
  end
end
