class CreateChurritos < ActiveRecord::Migration[5.1]
  def change
    create_table :churritos do |t|
      t.string :nombre
      t.text :sabor
      t.integer :precio

      t.timestamps
    end
  end
end
