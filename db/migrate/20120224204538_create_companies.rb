class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_id
      t.string :company_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :phone1
      t.string :phone2
      t.string :fax
      t.string :dba
      t.date :business_since
      t.string :contact_name
      t.string :contact_email
      t.string :sales_tax_id
      t.string :credit_status
      t.text :comments
      t.string :business_type
      t.string :password_digest

      t.timestamps
    end
  end
end
