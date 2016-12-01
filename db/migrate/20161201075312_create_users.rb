class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.binary :Password

      t.timestamps null: false
    end
  end
end
