require 'test_helper'

feature "Auth" do

    before do
      @user = User.create(
          email: 'email@domaaaa.com',
          password: 'pass123',
          password_confirmation: 'pass123'
      )
    end
    focus
    it "Returns a token if I’m logged in" do
        post api_v1_auth_path, {
            email: @user.email,
            password: 'pass123'
        }
        assert_equal 200, last_response.status
    end
end
