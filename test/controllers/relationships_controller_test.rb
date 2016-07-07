require 'test_helper'

class RelationshipsControllerTest < ActionController::TestCase
  
  test "Create should require logged-in user" do 
  	assert_no_difference 'Relationship.count' do
  		post Relationships_path
  	end
  	assert_redirected_to login_url
  end

  test "Destroy should require logged-in user" do
  	assert_no_difference 'Relationship.count' do
  		delete relationship_path(relationships(:one))
  	end
  	assert_redirected_to login_url
  end
end
