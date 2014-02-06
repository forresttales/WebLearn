# == Schema Information
#
# Table name: publisher_products
#
#  id              :integer          not null, primary key
#  publisher_id    :integer
#  name_product    :string(100)
#  created_at      :datetime
#  updated_at      :datetime
#  has_description :boolean          default(FALSE)
#

class PublisherProduct < ActiveRecord::Base
  
  attr_accessible :id,
                  :publisher_id,
                  :name_product,
                  :has_description,
                  :created_at,
                  :updated_at 
  
  
  belongs_to :publisher
  has_one :publisher_product_description



  # def self.dbdelete
      # self.connection.execute("DELETE FROM stores")
  # end
   
  # def self.dbclear
      # self.connection.execute("ALTER SEQUENCE stores_id_seq RESTART WITH 1")
  # end


  def self.import(file)
    
      # self.connection.execute("ALTER SEQUENCE stores_id_seq RESTART WITH 1")
    
    # if self.last.nil?                                                     # added
      # self.connection.execute("ALTER SEQUENCE stores_id_seq RESTART WITH 1")
      # id_new = 1                                                          # added
    # else                                                                  # added
      # idlast = self.last                                                  # added
      # id_last = idlast.id                                                 # added
      # id_new = id_last + 1                                                # added      
    # end                                                                   # added
    
    # id_new = self.maximum(:id).next
    
    
    # spreadsheet = open_spreadsheet(file)
    # header = spreadsheet.row(1)
    # (2..spreadsheet.last_row).each do |i|
      # row = Hash[[header, spreadsheet.row(i)].transpose]
      # store = find_by_id(row["id"]) || new
      # store.attributes = row.to_hash.slice(*accessible_attributes)
      # # store.id = id_new                                                   # added
      # # id_new += 1                                                         # added      
      # store.save!
    # end
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
