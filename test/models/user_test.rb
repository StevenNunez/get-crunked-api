require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "verifies token is unique" do
    bob1 = User.create(email: "bob@example.com", password: "bobby1")
    bob2 = User.create(email: "bob2@example.com", password: "bobby1")
    refute_equal bob1.authentication_token, bob2.authentication_token
  end
end
