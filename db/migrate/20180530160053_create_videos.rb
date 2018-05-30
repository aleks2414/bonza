class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.references :user, foreign_key: true
      t.string :link
      t.boolean :disponible, default:true

      t.timestamps
    end
  end
end
