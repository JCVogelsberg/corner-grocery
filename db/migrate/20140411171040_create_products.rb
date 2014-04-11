class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :price, :decimal
      t.column :description, :string

      t.timestamps
    end
  end
end
