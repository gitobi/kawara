class CreateKawaraArticleImages < ActiveRecord::Migration
  def change
    create_table :kawara_article_images do |t|
      t.integer :article_id,       null: false, index: true
      t.string  :file_id,          null: false
      t.string  :file_filename
      t.integer :file_size
      t.string  :file_content_type

      t.timestamps null: false
    end
  end
end
