class AddAtributesToTour < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :fecha_inicio, :date
  end
end
