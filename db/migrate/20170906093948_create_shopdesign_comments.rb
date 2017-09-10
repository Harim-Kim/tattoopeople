class CreateShopdesignComments < ActiveRecord::Migration[5.0]
  def change
    create_table :shopdesign_comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :tattooist_id
      t.integer :shopdesignimg_id
      t.timestamps
    end
  end
end
