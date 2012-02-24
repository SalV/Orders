# == Schema Information
#
# Table name: inventories
#
#  id            :integer         not null, primary key
#  inv_id        :string(255)
#  s_desc        :string(255)
#  l_desc        :text
#  image_path    :string(255)
#  origin        :string(255)
#  qty_on_hand   :integer
#  qty_on_order  :integer
#  qty_available :integer
#  product_type  :string(255)
#  sale_price    :float
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

require 'spec_helper'

describe Inventory do
  pending "add some examples to (or delete) #{__FILE__}"
end
