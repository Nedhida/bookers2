class RenameProfileColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :Users, :profile, :introduction
  end
end
