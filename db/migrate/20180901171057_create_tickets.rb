class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :request_number
      t.string :sequence_number
      t.string :request_type
      t.integer :time_track_id
      t.integer :service_area_id
      t.text :digsite_info

      t.timestamps
    end
  end
end
