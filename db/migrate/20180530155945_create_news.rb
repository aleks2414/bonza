class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.string :link
      t.string :foto1
      t.string :foto2
      t.string :foto3
      t.boolean :disponible, default:true

      t.timestamps
    end
  end
end
