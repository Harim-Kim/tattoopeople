class CreateShopshopimgs < ActiveRecord::Migration[5.0]
  def change
    create_table :shopshopimgs do |t|
      t.integer :tattooshop_id
      t.string :image
      t.string :title
      t.timestamps
    end
  end
end
