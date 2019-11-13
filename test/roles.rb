require_relative '../lib/user'
require_relative '../lib/user_entity'
require_relative '../lib/user_policies'

user = User.new
employee = User.new(roles: ['user', 'employee'], id: 2)

user_policies = UserPolicies.new(user.id, user.roles)
employee_policies = UserPolicies.new(employee.id, employee.roles)

user_entity = UserEntity.new(user, user_policies)
employee_entity = UserEntity.new(employee, employee_policies)

puts user_entity.archive_accessible?
puts employee_entity.archive_accessible?
