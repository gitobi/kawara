class CreateKawaraArticlesTags < ActiveRecord::Migration
  def change
    create_table :kawara_articles_tags do |t|
      t.integer :article_id, null: false
      t.integer :tag_id,     null: false

      t.timestamps null: false
    end

    add_index :kawara_articles_tags, [:article_id, :tag_id]
    add_index :kawara_articles_tags, [:tag_id, :article_id]
  end
end
