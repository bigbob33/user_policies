class UserEntity
  def initialize(user, policies)
    @user = user
    @policies = policies
  end

  def archive_accessible?
    @policies.archive_accessible?
  end
end

