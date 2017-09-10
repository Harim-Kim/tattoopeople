class CreateGalleryimgs < ActiveRecord::Migration[5.0]
  def change
    create_table :galleryimgs do |t|

      t.timestamps
    end
  end
end
