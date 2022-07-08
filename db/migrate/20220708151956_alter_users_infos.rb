class AlterUsersInfos < ActiveRecord::Migration[7.0]
  def change
    add_column :users do |t|
      t.string :first_name, null: false, default: "Anonym"
      t.string :last_name
      t.date :birthdate
      t.text :about
      t.attachment :id_card
    end
  end
end
