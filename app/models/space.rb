class Space < ApplicationRecord

  belongs_to :group

  validates :name, length: { in: 3..40 }

end