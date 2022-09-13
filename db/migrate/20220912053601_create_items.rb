# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items, id: :uuid do |t|
      t.belongs_to :list, null: false, foreign_key: true, type: :uuid
      t.string :name
      t.string :url
      t.string :image
      t.text :description
      t.integer :position

      t.timestamps
    end
  end
end
