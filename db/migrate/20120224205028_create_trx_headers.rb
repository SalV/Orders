class CreateTrxHeaders < ActiveRecord::Migration
  def change
    create_table :trx_headers do |t|
      t.string :company_id
      t.string :trx_type
      t.string :trx_id
      t.text :comments
      t.date :order_date
      t.date :ship_date
      t.date :order_ack_date
      t.float :total_amount
      t.date :close_date
      t.float :shipping_charges1
      t.float :shipping_charges2
      t.string :tracking_number
      t.string :carrier
      t.string :agent1
      t.float :bank_charges
      t.float :other_charges

      t.timestamps
    end
  end
end
