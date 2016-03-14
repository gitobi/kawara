class CreateKawaraArticles < ActiveRecord::Migration
  def change
    create_table :kawara_articles do |t|
      t.string :title
      t.string :subtitle
      t.text   :content
      t.integer :status, default: 0, null: false

      t.timestamps null: false
    end

    add_index :kawara_articles, [:status, :id]
  end
end
