# == Schema Information
#
# Table name: trx_details
#
#  id           :integer         not null, primary key
#  line_no      :integer
#  trx_id       :string(255)
#  item_id      :string(255)
#  quan_ordered :integer
#  quan_shipped :integer
#  unit_price   :float
#  comments     :text
#  post         :boolean
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class TrxDetail < ActiveRecord::Base
end
