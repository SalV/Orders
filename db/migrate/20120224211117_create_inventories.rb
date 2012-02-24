class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :inv_id
      t.string :s_desc
      t.text :l_desc
      t.string :image_path
      t.string :origin
      t.integer :qty_on_hand
      t.integer :qty_on_order
      t.integer :qty_available
      t.string :product_type
      t.float :sale_price

      t.timestamps
    end
  end
end
