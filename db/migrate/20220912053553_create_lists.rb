# frozen_string_literal: true

class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists, id: :uuid do |t|
      t.string :name, null: false
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.string :slug

      t.timestamps
    end
  end
end
