class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :director ,null: false
      t.timestamps
    end
  end
end
