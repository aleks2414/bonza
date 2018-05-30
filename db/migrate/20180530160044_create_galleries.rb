class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.references :user, foreign_key: true
      t.string :photo10

      t.timestamps
    end
  end
end
