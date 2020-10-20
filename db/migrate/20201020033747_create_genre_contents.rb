class CreateGenreContents < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_contents do |t|
      t.references :title, null: false  ,presence: true
      t.references :genre, null: false  ,presence: true
      t.timestamps
    end
  end
end
