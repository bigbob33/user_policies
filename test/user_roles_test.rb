require_relative '../lib/user'
require_relative '../lib/user_entity'
require_relative '../lib/user_policies'

require "test/unit"

class UserRolesTest < Test::Unit::TestCase
  def test_simple
    user = User.new
    user_policies = UserPolicies.new(user.id, user.roles)
    user_entity = UserEntity.new(user, user_policies)

    assert_equal(false, user_entity.archive_accessible?)
  end
end

