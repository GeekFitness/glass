class WhyDidIMakePhonenumberAString < ActiveRecord::Migration[5.0]
  def change
  	change_column :clients, :phone, :integer
  end
end
