# == Schema Information
#
# Table name: inv_x_refs
#
#  id         :integer         not null, primary key
#  company_id :string(255)
#  inv_id     :string(255)
#  part_id    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class InvXRef < ActiveRecord::Base
end
