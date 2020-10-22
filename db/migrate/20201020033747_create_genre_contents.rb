class CreateGenreContents < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_contents do |t|
      t.references :title, null: false 
      t.references :genre, null: false 
      t.timestamps
    end
  end
end
