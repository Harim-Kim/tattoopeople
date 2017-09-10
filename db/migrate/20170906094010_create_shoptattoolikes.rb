class CreateShoptattoolikes < ActiveRecord::Migration[5.0]
  def change
    create_table :shoptattoolikes do |t|
      t.integer :user_id
      t.integer :tattooist_id
      t.integer :shoptattooimg_id
      t.timestamps
    end
  end
end
