# == Schema Information
#
# Table name: product_types
#
#  id          :integer         not null, primary key
#  code        :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class ProductType < ActiveRecord::Base
end
