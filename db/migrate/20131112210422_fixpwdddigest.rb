class Fixpwdddigest < ActiveRecord::Migration
  def change
    rename_column :users, :password_ddigest, :password_digest
  end
end
