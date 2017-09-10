class CreateShoplikes < ActiveRecord::Migration[5.0]
  def change
    create_table :shoplikes do |t|
      t.integer :user_id
      t.integer :tattooist_id
      t.integer :tattooshop_id
      t.timestamps
    end
  end
end
