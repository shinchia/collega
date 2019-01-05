class AddSummryToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :summry, :string
  end
end
