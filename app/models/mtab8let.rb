# == Schema Information
#
# Table name: mtab8lets
#
#  id         :integer          not null, primary key
#  col_1      :string(300)
#  col_2      :string(300)
#  col_3      :string(300)
#  col_4      :string(300)
#  col_5      :string(300)
#  col_6      :string(300)
#  col_7      :string(300)
#  col_8      :string(300)
#  col_9      :string(300)
#  col_10     :string(300)
#  col_11     :string(300)
#  col_12     :string(300)
#  col_13     :string(300)
#  col_14     :string(300)
#  col_15     :string(300)
#  col_16     :string(300)
#  col_17     :string(300)
#  col_18     :string(300)
#  col_19     :string(300)
#  col_20     :string(300)
#  col_21     :string(300)
#  col_22     :string(300)
#  col_23     :string(300)
#  col_24     :string(300)
#  col_25     :string(300)
#  col_26     :string(300)
#  col_27     :string(300)
#  col_28     :string(300)
#  col_29     :string(300)
#  col_30     :string(300)
#  col_31     :string(300)
#  col_32     :string(300)
#  col_33     :string(300)
#  col_34     :string(300)
#  col_35     :string(300)
#  col_36     :string(300)
#  col_37     :string(300)
#  col_38     :string(300)
#  col_39     :string(300)
#  col_40     :string(300)
#  created_at :datetime
#  updated_at :datetime
#  col_41     :integer          default(0)
#  col_42     :integer          default(1)
#  col_43     :integer          default(1)
#  col_44     :integer          default(1)
#  col_45     :integer          default(1)
#  col_46     :integer          default(1)
#  col_47     :integer          default(1)
#  col_48     :integer          default(0)
#  col_49     :integer          default(0)
#  col_50     :integer          default(0)
#

class Mtab8let < ActiveRecord::Base
  
  attr_accessible :id,
                  :col_id,
                  :col_id,
                  :col_1,
                  :col_2,
                  :col_3,
                  :col_4,
                  :col_5,
                  :col_6,
                  :col_7,
                  :col_8,
                  :col_9,
                  :col_10,
                  :col_11,
                  :col_12,
                  :col_13,
                  :col_14,
                  :col_15,
                  :col_16,
                  :col_17,
                  :col_18,
                  :col_19,
                  :col_20,           
                  :col_21,                  
                  :col_22,                  
                  :col_23,                  
                  :col_24,                  
                  :col_25,
                  :col_26,
                  :col_27,
                  :col_28,
                  :col_29,
                  :col_30,
                  :col_31,
                  :col_32,
                  :col_33,
                  :col_34,
                  :col_35,
                  :col_36,
                  :col_37,
                  :col_38,
                  :col_39,
                  :col_40,
                  :col_41,
                  :col_42,
                  :col_43,
                  :col_44,
                  :col_45,
                  :col_46,
                  :col_47,
                  :col_48,
                  :col_49,
                  :col_50,
                  :created_at,
                  :updated_at  


  def self.dbdelete
      self.connection.execute("DELETE FROM mtab8lets")
  end

  
  def self.dbclear
      self.connection.execute("ALTER SEQUENCE mtab8lets_id_seq RESTART WITH 1")
  end

  
  def self.import(file)
    
  end


  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Roo::Csv.new(file.path)
    #when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
    when ".xls" then Roo::Excel.new(file.path)
    when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end

  
  def self.search_by_sql(s)
      where(s)
  end

  
end
