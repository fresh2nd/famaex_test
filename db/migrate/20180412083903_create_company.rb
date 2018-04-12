class CreateCompany < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.belongs_to :company_aggrupation, foreign_key: true
      t.timestamps
    end
  end
end
