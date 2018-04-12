puts 'Creating 1 Company Aggrupation with 1 Company with 1 Group with 1 Space and 1 Subgroup with 1 Space'

name_identifier = CompanyAggrupation.count + 1

company_aggrupation = CompanyAggrupation.create name: "Company Aggrupation #{name_identifier}"
puts "Created company aggrupation with name #{company_aggrupation.name}"

company = company_aggrupation.companies.create name: "Company #{name_identifier}"
puts "Created company with name #{company.name} associated with #{company.company_aggrupation.name}"

group = company.groups.create name: "Group #{name_identifier}"
puts "Created group with name #{group.name} associated with #{group.company.name}"

subgroup = group.subgroups.create name: "Subgroup #{name_identifier}"
puts "Created subgroup with name #{subgroup.name} associated with #{subgroup.parent_group.name}"

space = group.spaces.create name: "Space in group #{name_identifier}"
puts "Created space with name #{space.name} associated with #{space.group.name}"

space1 = subgroup.spaces.create name: "Space in subgroup #{name_identifier}"
puts "Created space with name #{space1.name} associated with #{space1.group.name}"

puts 'Structure creation finished'

puts 'Creating sample test'
User.create first_name: "Sample user #{User.count + 1}"
puts 'User created'



