class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :genre ,null:false ,presence:true
      t.timestamps
    end

  end
end
