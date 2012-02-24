# == Schema Information
#
# Table name: trx_headers
#
#  id                :integer         not null, primary key
#  company_id        :string(255)
#  trx_type          :string(255)
#  trx_id            :string(255)
#  comments          :text
#  order_date        :date
#  ship_date         :date
#  order_ack_date    :date
#  total_amount      :float
#  close_date        :date
#  shipping_charges1 :float
#  shipping_charges2 :float
#  tracking_number   :string(255)
#  carrier           :string(255)
#  agent1            :string(255)
#  bank_charges      :float
#  other_charges     :float
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

require 'spec_helper'

describe TrxHeader do
  pending "add some examples to (or delete) #{__FILE__}"
end
