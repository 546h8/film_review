class CreateGenreContents < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_contents do |t|

      t.timestamps
    end
  end
end
