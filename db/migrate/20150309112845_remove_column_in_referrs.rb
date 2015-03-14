class RemoveColumnInReferrs < ActiveRecord::Migration
  def change
    remove_column :referrers, :url
  end
end
