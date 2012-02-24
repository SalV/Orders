class CreateInvXRefs < ActiveRecord::Migration
  def change
    create_table :inv_x_refs do |t|
      t.string :company_id
      t.string :inv_id
      t.string :part_id

      t.timestamps
    end
  end
end
