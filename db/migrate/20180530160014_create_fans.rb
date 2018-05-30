class CreateFans < ActiveRecord::Migration[5.1]
  def change
    create_table :fans do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :content
      t.string :link
      t.string :foto4
      t.string :foto5
      t.string :foto6
      t.boolean :disponible, default:true

      t.timestamps
    end
  end
end
