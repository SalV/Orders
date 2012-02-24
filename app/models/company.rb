# == Schema Information
#
# Table name: companies
#
#  id              :integer         not null, primary key
#  company_id      :string(255)
#  company_name    :string(255)
#  address1        :string(255)
#  address2        :string(255)
#  city            :string(255)
#  state           :string(255)
#  postal_code     :string(255)
#  country         :string(255)
#  phone1          :string(255)
#  phone2          :string(255)
#  fax             :string(255)
#  dba             :string(255)
#  business_since  :date
#  contact_name    :string(255)
#  contact_email   :string(255)
#  sales_tax_id    :string(255)
#  credit_status   :string(255)
#  comments        :text
#  business_type   :string(255)
#  password_digest :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Company < ActiveRecord::Base
end
