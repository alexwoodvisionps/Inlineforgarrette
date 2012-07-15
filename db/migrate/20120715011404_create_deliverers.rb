class CreateDeliverers < ActiveRecord::Migration
  def change
    create_table :deliverers do |t|
      t.string :nickname
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :location
      t.string :password

      t.timestamps
    end
  end
end
