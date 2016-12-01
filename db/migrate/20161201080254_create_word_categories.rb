class CreateWordCategories < ActiveRecord::Migration
  def change
    create_table :word_categories, {:id => false} do |t|
      t.integer :idword
      t.integer :idcategory

      t.timestamps null: false
    end
	execute "ALTER TABLE word_categories ADD PRIMARY KEY (idword,idcategory);"
  end
end
