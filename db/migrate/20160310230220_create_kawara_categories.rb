class CreateKawaraCategories < ActiveRecord::Migration
  def change
    create_table :kawara_categories do |t|
      t.string  :name,           null: false
      t.integer :parent_id
      t.integer :lft,            null: false
      t.integer :rgt,            null: false
      t.integer :depth,          null: false, default: 0
      t.integer :children_count, null: false, default: 0

      t.timestamps null: false
    end

    add_index :kawara_categories, :parent_id
    add_index :kawara_categories, :lft
    add_index :kawara_categories, :rgt
  end
end
