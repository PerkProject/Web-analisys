class ChangeColumnInReferrers < ActiveRecord::Migration
  def change
    change_column :referrers, :ip, :string
  end
end
