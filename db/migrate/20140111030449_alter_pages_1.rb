class AlterPages1 < ActiveRecord::Migration
  def change

    add_column :pages, :name_file, :string, :limit => 50
    add_column :pages, :name_dir, :string, :limit => 50
    add_column :pages, :slug, :string, :limit => 200
    add_index :pages, :slug, unique: true
    
  end
end
