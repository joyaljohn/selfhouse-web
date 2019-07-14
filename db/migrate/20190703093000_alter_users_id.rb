class AlterUsersId < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uuid, varchar(30), default: '', null: true
  end

end