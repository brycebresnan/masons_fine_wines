class AddCostToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column(:products, :cost, :decimal, precision: 8, scale: 2)
  end
end
