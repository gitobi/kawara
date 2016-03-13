class CreateKawaraArticles < ActiveRecord::Migration
  def change
    create_table :kawara_articles do |t|
      t.string :title
      t.string :subtitle
      t.text   :content
      t.integer :status, default: 0, null: false, index: true

      t.timestamps null: false
    end
  end
end
