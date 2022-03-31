# frozen_string_literal: true

class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.integer :AuthorId
      t.string :Name
      t.decimal :Amount

      t.timestamps
    end
  end
end
