class PhoneHasToBeAString < ActiveRecord::Migration[5.0]
  def change
  	change_column :clients, :phone, :string
  	remove_column :events, :phone, :string
  end
end
