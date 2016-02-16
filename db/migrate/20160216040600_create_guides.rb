class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.integer :shop_id
      t.integer :user_id
      t.integer :category

      t.timestamps
    end
  end
end
