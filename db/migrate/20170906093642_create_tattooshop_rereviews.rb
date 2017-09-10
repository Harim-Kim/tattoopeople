class CreateTattooshopRereviews < ActiveRecord::Migration[5.0]
  def change
    create_table :tattooshop_rereviews do |t|
      t.text :content
      t.integer :user_id
      t.integer :review_id
      t.integer :tattooist_id
      t.timestamps
    end
  end
end
