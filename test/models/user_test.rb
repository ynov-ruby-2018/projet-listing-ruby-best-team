require 'test_helper'

class UserTest < ActiveSupport::TestCase
  describe "generate_token" do
    it "generates a token" do
        token = @user.generate_token
        assert_equal 36, token.length
    end
  end
end
