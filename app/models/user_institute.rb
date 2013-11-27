# == Schema Information
#
# Table name: institutes
#
#  id                         :integer          not null, primary key
#  name                       :string(100)
#  address                    :string(100)
#  city                       :string(100)
#  state                      :string(50)
#  country                    :string(100)
#  zip                        :integer
#  main_phone                 :string(100)
#  main_contact_email         :string(100)
#  public_private             :string(10)
#  number_students            :integer
#  number_computing_devices   :integer
#  post_rfp_link              :string(100)
#  company_contact_name_first :string(100)
#  company_contact_name_last  :string(100)
#  name_title                 :string(50)
#  company_contact_phone      :string(50)
#  company_contact_email      :string(100)
#  allow_add_products         :boolean
#  created_at                 :datetime
#  updated_at                 :datetime
#  user_id                    :integer
#

class UserInstitute < Institute
end
