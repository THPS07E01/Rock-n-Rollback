class CreateSubcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :subcomments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :comment, index: true
      t.text :body

      t.timestamps
    end
  end
end
