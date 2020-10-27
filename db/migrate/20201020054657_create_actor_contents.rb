class CreateActorContents < ActiveRecord::Migration[6.0]
  def change
    create_table :actor_contents do |t|
      t.references :actor , foreign_key: true, type: :bigint,optional: true
      t.references :content , foreign_key: true, type: :bigint,optional: true
      t.timestamps
    end
  end
end
