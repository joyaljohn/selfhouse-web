# frozen_string_literal: true

class CreatePublicationSubCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :publication_sub_categories do |t|
      t.string :name
      t.references :publication_category, foreign_key: true

      t.timestamps
    end
  end
end
