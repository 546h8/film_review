  class CreateContents < ActiveRecord::Migration[6.0]
    def change
      create_table :content do |t|
        t.datetime :screening_date,   null: false
        t.datetime :production_date,  null: false
        t.integer  :screening_time,   null: false
        t.string   :movie_director,   null: false
        t.string   :synopsis,         null: false
        t.string   :impressions,      nill: false
        t.timestamps
      end
    end
  end

