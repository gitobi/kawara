class CreateKawaraArticleImages < ActiveRecord::Migration
  def change
    create_table :kawara_article_images do |t|
      t.integer :site_id,          null: false
      t.integer :article_id,       null: false
      t.string  :file_id,          null: false
      t.string  :file_filename
      t.integer :file_size
      t.string  :file_content_type

      t.timestamps null: false
    end

    add_index :kawara_article_images, [:site_id, :article_id]
    add_index :kawara_article_images, :file_id
  end
end
