class AlterInstituteQueryResults3 < ActiveRecord::Migration
  def change

    add_column :institute_query_results, :price, :integer, :precision => 8, :scale => 2    

  end
end
