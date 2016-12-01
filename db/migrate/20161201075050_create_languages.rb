class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :ISOCode
      t.string :Description

      t.timestamps null: false
    end
  end
end
