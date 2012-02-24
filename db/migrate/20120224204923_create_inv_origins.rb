class CreateInvOrigins < ActiveRecord::Migration
  def change
    create_table :inv_origins do |t|
      t.string :set_id
      t.string :element_id

      t.timestamps
    end
  end
end
