class AlterRegisters2 < ActiveRecord::Migration
  def change
    add_column :registers, :admin, :boolean
    add_column :registers, :remember_token, :string
    add_column :registers, :password_digest, :string
    add_index :registers, :remember_token
  end
end
