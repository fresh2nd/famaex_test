class CreateCompanyAggrupation < ActiveRecord::Migration[5.1]
  def change
    create_table :company_aggrupations do |t|
      t.string :name, unique: true
      t.timestamps
    end
  end
end
