class CreateCarLogs < ActiveRecord::Migration
  def change
    create_table :car_logs do |t|
      t.string :plate_number
      t.string :brand
      t.string :slot_number
      t.boolean :is_taken

      t.timestamps null: false
    end
  end
end
