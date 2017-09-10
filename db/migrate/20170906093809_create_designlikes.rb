class CreateDesignlikes < ActiveRecord::Migration[5.0]
  def change
    create_table :designlikes do |t|
      t.integer :user_id
      t.integer :tattooist_id
      t.integer :shopdesignimg_id
      t.timestamps
    end
  end
end
