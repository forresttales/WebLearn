# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name_first :string(50)
#  name_last  :string(50)
#  phone      :string(50)
#  user_id    :integer
#

class AdminTeacher < Teacher
end
