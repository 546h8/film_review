class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string     :title
      # , null: false  
      t.references :director                     ,foreign_key: 'content_id' , type: :bigint
      t.references :screeningdate                ,foreign_key: 'content_id'
      t.integer    :screeningtime
      # ,   null: false  
      t.string     :synopsis
      # ,         null: false  
      t.string     :impressions
      # ,      null: false  
      t.string     :external_url
      t.string     :embed_code
      t.string     :image
      t.float      :rating
      t.timestamps
    end
  end
end

