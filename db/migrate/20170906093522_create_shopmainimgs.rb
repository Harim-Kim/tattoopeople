class CreateShopmainimgs < ActiveRecord::Migration[5.0]
  def change
    create_table :shopmainimgs do |t|
      t.integer :tattooshop_id
      t.string :image
      t.timestamps
    end
  end
end
