class CreateKawaraArticlesMetaTags < ActiveRecord::Migration
  def change
    create_table :kawara_articles_meta_tags do |t|
      t.integer :article_id,  null: false
      t.integer :meta_tag_id, null: false

      t.timestamps null: false
    end

    add_index :kawara_articles_meta_tags, [:article_id, :meta_tag_id]
    add_index :kawara_articles_meta_tags, [:meta_tag_id, :article_id]
  end
end
