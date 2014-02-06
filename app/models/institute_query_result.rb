# == Schema Information
#
# Table name: institute_query_results
#
#  id                 :integer          not null, primary key
#  institute_id       :integer
#  institute_query_id :integer
#  name_result        :string(100)
#  created_at         :datetime
#  updated_at         :datetime
#

class InstituteQueryResult < ActiveRecord::Base
  
  attr_accessible :id,
                  :institute_query_id,
                  :institute_id,
                  :name_result,
                  :created_at,
                  :updated_at 
  
  
  belongs_to :institute_query

  
end
