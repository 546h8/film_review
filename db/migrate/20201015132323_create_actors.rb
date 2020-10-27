class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :actor ,foreign_key: 'actor_id'
      # ,null: false 
      t.timestamps
    end
  end
end
