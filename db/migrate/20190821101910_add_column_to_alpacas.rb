class AddColumnToAlpacas < ActiveRecord::Migration[5.2]
  def change
    add_column :alpacas, :description, :string
  end
end
