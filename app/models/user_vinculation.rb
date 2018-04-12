class UserVinculation < ApplicationRecord

  belongs_to :user
  belongs_to :vinculable, polymorphic: true

  VINC_TYPES = ["company_aggrupation", "company", "group", "space"]

  VINC_TYPES.each do |vt|
    define_method "is_#{vt}?" do
      vinculable_type == vt.capitalize
    end
  end

  def resource
    vinculable_type.constantize.find vinculable_id
  end

end
