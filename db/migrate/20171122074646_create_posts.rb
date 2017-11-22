class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :category
      t.text :description
      t.integer :min_order_qty
      t.float :price

      t.timestamps
    end
  end
end
