class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :address
      t.integer :plan_id

      t.timestamps
    end
  end
end
