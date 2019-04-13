class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :counselor_id
      t.integer :patient_id
      t.string :task
      t.boolean :complete

      t.timestamps
    end
  end
end
