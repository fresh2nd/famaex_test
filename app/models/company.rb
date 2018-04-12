class Company < ApplicationRecord

  belongs_to :company_aggrupation
  has_many :groups

  validates :name, length: { in: 3..40 }

end
