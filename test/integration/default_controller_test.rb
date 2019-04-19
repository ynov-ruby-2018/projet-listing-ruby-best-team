require 'test_helper'

feature "Homepage" do

  it "respond a 200 when loading homepage"do
    get root_path
    assert_equal 200, last_response.status
  end

end