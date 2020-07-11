class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string:user_id
      t.string:title
      t.string:depature_time
      t.string:depature_address
      t.string:destination_address
      t.string:stopby_address1
      t.string:stopby_address2
      t.string:stopby_name1
      t.string:stopby_name2



      t.timestamps
    end
  end
end
