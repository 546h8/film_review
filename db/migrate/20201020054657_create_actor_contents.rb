class CreateActorContents < ActiveRecord::Migration[6.0]
  def change
    create_table :actor_contents do |t|
      t.references :actor ,null:false 
      t.references :title ,null:false 
      t.timestamps
    end
  end
end
