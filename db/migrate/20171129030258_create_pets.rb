class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :kind, null: false
      t.string :gender
      t.string :age
      t.belongs_to :person, foreign_key: true

      t.timestamps
    end
  end
end
