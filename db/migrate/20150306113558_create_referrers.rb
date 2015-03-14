class CreateReferrers < ActiveRecord::Migration
  def change
    create_table :referrers do |t|
      t.integer :ip
      t.string :url
      t.string :name
      t.string :browser
      t.integer :count
      t.timestamps
    end
  end
end
