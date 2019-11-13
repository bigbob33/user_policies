require_relative 'policy_factory'

class UserPolicies
  def initialize(user_id, roles, policy_factory = PolicyFactory.new)
    @user_id = user_id
    @roles = roles
    @policy_factory = policy_factory
  end

  def policies
    @policies ||= @roles.map { |role| @policy_factory.build(@user_id, role) }
  end

  def archive_accessible?
    policies.map(&:archive_accessible?).any?
  end
end

