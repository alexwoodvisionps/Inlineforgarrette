class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :email
      t.string :password
      t.string :phone
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end
end
