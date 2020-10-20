class CreateActorContents < ActiveRecord::Migration[6.0]
  def change
    create_table :actor_contents do |t|
      t.references :actor ,null:false ,presence: true
      t.references :title ,null:false ,presence: true
      t.timestamps
    end
  end
end
