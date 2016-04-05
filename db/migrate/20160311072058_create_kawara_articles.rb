class CreateKawaraArticles < ActiveRecord::Migration
  def change
    create_table :kawara_articles do |t|
      t.integer :site_id,    null: false
      t.integer :category_id
      t.string  :slug
      t.string  :title
      t.string  :subtitle
      t.text    :content
      t.integer :status,     default: 0, null: false

      t.timestamps null: false
    end

    add_index :kawara_articles, [:site_id, :slug], unique: true
    add_index :kawara_articles, [:site_id, :status, :slug]
    add_index :kawara_articles, [:site_id, :status, :id]
    add_index :kawara_articles, [:site_id, :category_id, :status]
  end
end
