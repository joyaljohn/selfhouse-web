# frozen_string_literal: true

class ParamsForUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users, bulk: true do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
    end
  end
end
