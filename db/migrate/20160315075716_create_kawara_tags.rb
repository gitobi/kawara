class CreateKawaraTags < ActiveRecord::Migration
  def change
    create_table :kawara_tags do |t|
      t.integer :site_id,       null: false
      t.string  :slug
      t.string  :name,          null: false
      t.integer :articles_count

      t.timestamps null: false
    end

    add_index :kawara_tags, [:site_id, :slug], unique: true
    add_index :kawara_tags, [:site_id, :name], unique: true
  end
end
