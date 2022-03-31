# frozen_string_literal: true

# migrations class
class AddUserToGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, null: false, foreign_key: true
  end
end
