class CreateScreeningdates < ActiveRecord::Migration[6.0]
  def change
    create_table :screeningdates do |t|
      t.datetime :screening_date ,null:false , presence: true
      t.timestamps
    end
  end
end
