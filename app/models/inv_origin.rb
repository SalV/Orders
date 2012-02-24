# == Schema Information
#
# Table name: inv_origins
#
#  id         :integer         not null, primary key
#  set_id     :string(255)
#  element_id :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class InvOrigin < ActiveRecord::Base
end
