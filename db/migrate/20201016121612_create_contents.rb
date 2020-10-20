  class CreateContents < ActiveRecord::Migration[6.0]
    def change
      create_table :content do |t|
        t.string     :title,            null: false  ,presence: true
        t.references :director,         null: false  ,presence: true
        t.references :screening_date,    null: false ,presence: true
        t.datetime   :production_date,  null: false  ,presence: true
        t.integer    :screening_time,   null: false  ,presence: true
        t.string     :synopsis,         null: false  ,presence: true
        t.string     :impressions,      null: false  ,presence: true
        t.string     :URL
        t.string     :embed_code
        t.string     :image
        t.timestamps
      end
    end
  end

