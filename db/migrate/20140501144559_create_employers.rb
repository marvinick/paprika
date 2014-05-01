class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :business_name, :email
      t.string :password_digest
      t.string :location
      t.timestamps
    end
  end
end
