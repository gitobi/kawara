class CreateKawaraSites < ActiveRecord::Migration
  def change
    create_table :kawara_sites do |t|
      t.string  :name,       null: false
      t.string  :title
      t.string  :description
      t.integer :status,     default: 0, null: false

      t.timestamps null: false
    end

    add_index :kawara_sites, :name, unique: true
    add_index :kawara_sites, :status
  end
end
