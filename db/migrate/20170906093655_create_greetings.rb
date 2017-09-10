class CreateGreetings < ActiveRecord::Migration[5.0]
  def change
    create_table :greetings do |t|
      t.text :content
      t.integer :tattooshop_id
      t.string :openhour
      t.string :hourlyprice
      t.timestamps
    end
  end
end
