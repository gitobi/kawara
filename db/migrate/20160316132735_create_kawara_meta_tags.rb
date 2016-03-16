class CreateKawaraMetaTags < ActiveRecord::Migration
  def change
    create_table :kawara_meta_tags do |t|
      t.string :name, null: false
      t.integer :articles_count

      t.timestamps null: false
    end

    add_index :kawara_meta_tags, :name, unique: true
  end
end
