class RemoveWrongFieldsFromEvents < ActiveRecord::Migration[5.0]

  def change
  	remove_column :events, :email, :string
  	remove_column :events, :name, :string
  	remove_column :clients, :duration, :float
  	remove_column :clients, :address, :text
  	remove_column :clients, :comments, :text
  end
end
