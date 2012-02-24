class CreateTrxDetails < ActiveRecord::Migration
  def change
    create_table :trx_details do |t|
      t.integer :line_no
      t.string :trx_id
      t.string :item_id
      t.integer :quan_ordered
      t.integer :quan_shipped
      t.float :unit_price
      t.text :comments
      t.boolean :post

      t.timestamps
    end
  end
end
