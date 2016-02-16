class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.integer :shop
      t.string :name

      t.timestamps
    end
  end
end
