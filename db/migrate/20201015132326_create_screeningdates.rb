class CreateScreeningdates < ActiveRecord::Migration[6.0]
  def change
    create_table :screeningdates do |t|
      t.datetime :screeningdate ,foreign_key: 'screeningdate_id'
      # ,null:false 
      t.timestamps
    end
  end
end
