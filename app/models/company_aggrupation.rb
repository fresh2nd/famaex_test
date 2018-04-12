class CompanyAggrupation < ApplicationRecord

  has_many :companies, dependent: :destroy

end
