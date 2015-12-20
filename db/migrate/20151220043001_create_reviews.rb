class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|

      t.timestamps
      t.string :nickname
      t.integer :rate
      t.text :reviews
      t.integer :shop_id
    end
  end
end
