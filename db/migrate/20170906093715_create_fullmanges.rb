class CreateFullmanges < ActiveRecord::Migration[5.0]
  def change
    create_table :fullmanges do |t|
      t.integer :tattooshop_id
      t.integer :tattooist_id
      t.timestamps
    end
  end
end
