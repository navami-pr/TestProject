class CreateExcavators < ActiveRecord::Migration[5.2]
  def change
    create_table :excavators do |t|
      t.string :company_name
      t.string :address
      t.string :crew_onsite
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
