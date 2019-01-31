class CreateDogGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_groups do |t|
      t.belongs_to :stroll, index: true
      t.timestamps
    end
  end
end
