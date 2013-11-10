class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.integer "article_id"
      t.string "type", :limit => 100      
      t.string "name_url", :limit => 100
      t.string "name_file", :limit => 50
      t.string "name_author", :limit => 50
      t.string "name_admin", :limit => 50                  
      t.text "key_words", :limit => 1000
      t.date "date_article"
      t.timestamps
    end
  end
end
