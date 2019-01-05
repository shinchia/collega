class AddTeacherToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :teacher, :string
  end
end
