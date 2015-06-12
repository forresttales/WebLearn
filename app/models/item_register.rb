# == Schema Information
#
# Table name: item_registers
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  item_description :string           default("")
#  item_type        :integer          default(0)
#

class ItemRegister < ActiveRecord::Base
end
