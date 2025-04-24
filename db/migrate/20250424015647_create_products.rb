class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      # create a column in products table called name
      t.string :name

      # automatically set columns for created_at and updated_at
      t.timestamps
    end
  end
end
