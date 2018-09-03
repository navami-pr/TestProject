class AddNewFieldsToTickets < ActiveRecord::Migration[5.2]
  def change
  	add_column :tickets, :response_due_date_time, :datetime
  	add_column :tickets, :primary_service_area_code, :hstore
  	add_column :tickets, :additional_service_area_code, :hstore
  end
end
