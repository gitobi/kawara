class CreateKawaraArticles < ActiveRecord::Migration
  def change
    create_table :kawara_articles do |t|
      t.string :title,   null: false
      t.string :subtitle
      t.text   :content

      t.timestamps null: false
    end
  end
end
