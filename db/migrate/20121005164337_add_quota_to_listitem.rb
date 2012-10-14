class AddQuotaToListitem < ActiveRecord::Migration
  def change
    add_column :listitems, :quota, :integer
  end
end
