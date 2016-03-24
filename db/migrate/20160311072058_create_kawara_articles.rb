class CreateKawaraArticles < ActiveRecord::Migration
  def change
    create_table :kawara_articles do |t|
      t.integer :category_id
      t.string  :slug
      t.string  :title
      t.string  :subtitle
      t.text    :content
      t.integer :status, default: 0, null: false

      t.timestamps null: false
    end

    add_index :kawara_articles, :slug, unique: true
    add_index :kawara_articles, [:status, :slug]
    add_index :kawara_articles, [:status, :id]
    add_index :kawara_articles, :category_id
    add_index :kawara_articles, [:category_id, :status]
  end
end
