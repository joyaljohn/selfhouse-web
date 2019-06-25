# frozen_string_literal: true

class AddConfirmableToUsers < ActiveRecord::Migration[5.2]
  def up
    change_table :users, bulk: true do |t|
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.index :confirmation_token, unique: true
    end
    # rubocop:disable Rails/SkipsModelValidations
    User.update_all confirmed_at: DateTime.zone.now
    # rubocop:enable Rails/SkipsModelValidations
  end

  def down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
