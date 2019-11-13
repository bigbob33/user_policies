class User
  attr_accessor :roles, :id

  def initialize(roles: ['user'], id: 1)
    @id = id
    @roles = roles
  end
end

