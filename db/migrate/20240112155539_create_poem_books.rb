class CreatePoemBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :poem_books do |t|
      t.string :name
      t.string :writer
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
