class CreateKawaraMetaTags < ActiveRecord::Migration
  def change
    create_table :kawara_meta_tags do |t|
      t.integer :site_id,       null: false
      t.string  :name,          null: false
      t.integer :articles_count

      t.timestamps null: false
    end

    add_index :kawara_meta_tags, [:site_id, :name], unique: true
  end
end
