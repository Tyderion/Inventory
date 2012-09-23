class CreateListitems < ActiveRecord::Migration
  def self.up
    create_table :listitems do |t|
      t.integer :amount
      t.integer :list_id
      t.integer :item_id
      t.timestamps
    end
  end

  def self.down
    drop_table :listitems
  end
end
