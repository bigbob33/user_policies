module Policies
  class EmployeePolicy
    def initialize(user_id)
      @user_id = user_id
    end

    def archive_accessible?
      true
    end
  end
end

