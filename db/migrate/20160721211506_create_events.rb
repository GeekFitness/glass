class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :email
      t.float :duration
      t.text :address
      t.string :phone
      t.text :comments
      t.string :date

      t.timestamps
    end
  end
end
