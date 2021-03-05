class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.boolean :good_boy

      t.timestamps
    end
  end
end
