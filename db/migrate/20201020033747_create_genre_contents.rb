class CreateGenreContents < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_contents do |t|
      t.references :genre,       foreign_key: true, type: :bigint
      t.references :content, foreign_key: true, type: :bigint
      t.timestamps
    end
  end
end
