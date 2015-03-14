class RemoveColumnInReferrers < ActiveRecord::Migration
  def change
    remove_column :referrers, :count
  end
end
