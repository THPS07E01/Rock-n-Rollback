class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.belongs_to :city, index: true
      t.belongs_to :dog_group, index: true
      t.string :name
      t.string :master

      t.timestamps
    end
  end
end
