# helper class
class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :Name
      t.string :Icon

      t.timestamps
    end
  end
end
