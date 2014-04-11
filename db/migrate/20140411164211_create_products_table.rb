class CreateProductsTable < ActiveRecord::Migration
  def change
    create_table :products_tables do |t|
      t.column :name, :string
      t.column :price, :currency
      t.column :description, :string

      t.timestamps
    end
  end
end
