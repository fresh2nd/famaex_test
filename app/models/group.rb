class Group < ApplicationRecord

  belongs_to :company
  belongs_to :parent_group, class_name: "Group", optional: true

  has_many :subgroups, class_name: "Group", foreign_key: :parent_group_id
  has_many :spaces

  before_validation :assign_company, if: :company_blank?

  def company_blank?
    company_id.blank?
  end

  def assign_company
    assign_attributes(company_id: parent_group.company_id)
  end

  def sublevel?
    parent_group_id.present?
  end

end
