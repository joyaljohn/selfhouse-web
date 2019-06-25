# frozen_string_literal: true

class CreatePublicationCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :publication_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
