class AddSentenceToVideos < ActiveRecord::Migration[5.2]
    def change
      add_column :videos, :sentence, :string
    end
end
