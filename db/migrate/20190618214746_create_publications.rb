# frozen_string_literal: true

class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :title
      t.text :abstract
      t.references :publication_sub_category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
