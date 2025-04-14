class Current < ActiveSupport::CurrentAttributes
  # This class is used to store the current user in a thread-safe manner.
  # It inherits from ActiveSupport::CurrentAttributes, which provides a way to
  # store attributes that are specific to the current thread of execution.
  # This is useful for storing information that is needed across multiple
  # method calls, such as the current user.
  attribute :user
end
