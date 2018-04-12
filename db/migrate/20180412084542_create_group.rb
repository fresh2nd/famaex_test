class CreateGroup < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.belongs_to :company, index: true
      t.belongs_to :parent_group, index: true
      t.string :name, null: false
    end
  end
end
