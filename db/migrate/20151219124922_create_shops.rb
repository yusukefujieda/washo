class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|

      t.timestamps
      t.string :name
      t.text :text
      t.text :image
    end
  end
end
