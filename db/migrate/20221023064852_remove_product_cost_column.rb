class RemoveProductCostColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column(:products, :cost)
  end
end
