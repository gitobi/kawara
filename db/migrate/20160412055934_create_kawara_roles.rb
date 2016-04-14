class CreateKawaraRoles < ActiveRecord::Migration
  def change
    create_table :kawara_roles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
