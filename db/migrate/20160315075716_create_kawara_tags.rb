class CreateKawaraTags < ActiveRecord::Migration
  def change
    create_table :kawara_tags do |t|
      t.string  :slug
      t.string  :name, null: false
      t.integer :articles_count

      t.timestamps null: false
    end

    add_index :kawara_tags, :slug, unique: true
    add_index :kawara_tags, :name, unique: true
  end
end
