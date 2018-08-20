class AddAttToNews < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :fecha, :date
  end
end
