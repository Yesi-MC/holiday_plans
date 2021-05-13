class CreateVacationRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :vacation_requests do |t|
      t.integer :status
      t.string :vacation_start_date
      t.string :vacation_end_date
      t.references :employee, foreign_key: true
      t.references :manager, foreign_key: true

      t.timestamps
    end
  end
end
