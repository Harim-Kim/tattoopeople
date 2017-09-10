class CreateTattooshops < ActiveRecord::Migration[5.0]
  def change
    create_table :tattooshops do |t|
      t.string :country
      t.string :city
      t.string :address
      t.string :shopname
      t.string :phonenumber
      t.integer :tattooist_id
      t.string :profile_img
      t.string :suburb
      t.float :longitude
      t.float :latitude
      t.timestamps
    end
  end
end
