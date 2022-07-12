class AlterUsersInfos < ActiveRecord::Migration[7.0]
  def change
      add_column :users, :first_name, :string, null: false, default: "Anonym"
      add_column :users, :last_name, :string
      add_column :users, :birthdate, :date
      add_column :users, :about, :text
  end
end
