require_relative '../lib/user'
require_relative '../lib/user_entity'
require_relative '../lib/user_policies'

require "test/unit"

class EmployeeRolesTest < Test::Unit::TestCase
  def test_simple
    employee = User.new(roles: ['user', 'employee'], id: 2)
    employee_policies = UserPolicies.new(employee.id, employee.roles)
    employee_entity = UserEntity.new(employee, employee_policies)

    assert_equal(true, employee_entity.archive_accessible?)
  end
end

