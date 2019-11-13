require_relative 'policies/user_policy'
require_relative 'policies/employee_policy'

class PolicyFactory
  POLICY_CLASSES = {
    user: Policies::UserPolicy,
    employee: Policies::EmployeePolicy
  }

  def build(user_id, role)
    POLICY_CLASSES[role.to_sym].new(user_id)
  end
end

