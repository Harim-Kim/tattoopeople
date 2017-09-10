class CreateTattooshopReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :tattooshop_reviews do |t|
      t.text :content
      t.integer :user_id
      t.integer :tattooist_id
      t.integer :tattooshop_id
      t.string :purchase
      t.string :title
      t.string :designer
      t.timestamps
    end
  end
end
