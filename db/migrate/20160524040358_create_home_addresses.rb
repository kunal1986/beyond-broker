class CreateHomeAddresses < ActiveRecord::Migration
  def change
    create_table :home_addresses do |t|

      t.timestamps null: false
    end
  end
end
