class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :trx_id
      t.string :trx_type
      t.float :amount_paid
      t.date :pmt_date
      t.string :pmt_type
      t.string :pmt_doc
      t.text :comments
      t.string :inv_adj_code

      t.timestamps
    end
  end
end
