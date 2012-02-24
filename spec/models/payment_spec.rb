# == Schema Information
#
# Table name: payments
#
#  id           :integer         not null, primary key
#  trx_id       :string(255)
#  trx_type     :string(255)
#  amount_paid  :float
#  pmt_date     :date
#  pmt_type     :string(255)
#  pmt_doc      :string(255)
#  comments     :text
#  inv_adj_code :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

require 'spec_helper'

describe Payment do
  pending "add some examples to (or delete) #{__FILE__}"
end
