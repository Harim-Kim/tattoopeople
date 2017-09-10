class CreateShoptattooComments < ActiveRecord::Migration[5.0]
  def change
    create_table :shoptattoo_comments do |t|
      t.integer :user_id
      t.integer :tattooist_id
      t.text :content
      t.integer :shoptattooimg_id
      t.timestamps
    end
  end
end
