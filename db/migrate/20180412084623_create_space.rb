class CreateSpace < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :name, null: false
      t.string :internal_code
      t.belongs_to :group, foreign_key: true
    end
  end
end
