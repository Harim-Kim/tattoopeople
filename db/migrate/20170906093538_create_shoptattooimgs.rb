class CreateShoptattooimgs < ActiveRecord::Migration[5.0]
  def change
    create_table :shoptattooimgs do |t|
      t.integer :tattooshop_id
      t.string :image
      t.string :title
      t.text :description
      t.string :designer
      t.timestamps
    end
  end
end
