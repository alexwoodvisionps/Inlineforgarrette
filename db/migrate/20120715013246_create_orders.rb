class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :total
      t.datetime :timeplaced
      t.datetime :timecomplete
      t.string :shippingstreet1
      t.string :shippingstreet2
      t.string :shippingcity
      t.string :shippingstate
      t.string :shippingcountry
      t.string :shippingzipcode
      t.string :billingstreet1
      t.string :billingstreet2
      t.string :billingcity
      t.string :billingstate
      t.string :billingcountry
      t.string :billingzipcode
      t.string :encryptedcreditcard
      t.string :cvr
      t.integer :expirationyear
      t.integer :expirationmonth

      t.timestamps
    end
  end
end
