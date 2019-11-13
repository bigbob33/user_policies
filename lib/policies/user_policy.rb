module Policies
  class UserPolicy
    def initialize(user_id)
      @user_id = user_id
    end

    def archive_accessible?
      false
    end
  end
end

