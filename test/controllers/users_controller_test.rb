require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { avatar: @user.avatar, email: @user.email, github_url: @user.github_url, linkedin_url: @user.linkedin_url, location: @user.location, name: @user.name, other_site: @user.other_site, password_digest: @user.password_digest, slack_name: @user.slack_name, twitter: @user.twitter } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { avatar: @user.avatar, email: @user.email, github_url: @user.github_url, linkedin_url: @user.linkedin_url, location: @user.location, name: @user.name, other_site: @user.other_site, password_digest: @user.password_digest, slack_name: @user.slack_name, twitter: @user.twitter } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
