class AddColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :description, :text
    remove_column :pets, :age, :integer
  end
end
