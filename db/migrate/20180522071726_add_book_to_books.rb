class AddBookToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :isbn, :string
    add_column :books, :name, :string
    add_column :books, :author, :string
    add_column :books, :public_date, :date
    add_column :books, :condition, :string
    add_column :books, :price, :string
  end
end
