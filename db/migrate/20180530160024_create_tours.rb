class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.string :lugar
      t.string :fecha
      t.string :foto7
      t.string :foto8
      t.string :foto9
      t.string :link
      t.string :video
      t.boolean :disponible, default:true

      t.timestamps
    end
  end
end
