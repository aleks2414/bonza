class CreateMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :musics do |t|
      t.references :user, foreign_key: true
      t.string :link
      t.boolean :disponible, default:true

      t.timestamps
    end
  end
end
