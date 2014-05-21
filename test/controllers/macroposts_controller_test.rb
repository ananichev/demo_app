require 'test_helper'

class MacropostsControllerTest < ActionController::TestCase
  setup do
    @macropost = macroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:macroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create macropost" do
    assert_difference('Macropost.count') do
      post :create, macropost: { content: @macropost.content, user_id: @macropost.user_id }
    end

    assert_redirected_to macropost_path(assigns(:macropost))
  end

  test "should show macropost" do
    get :show, id: @macropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @macropost
    assert_response :success
  end

  test "should update macropost" do
    patch :update, id: @macropost, macropost: { content: @macropost.content, user_id: @macropost.user_id }
    assert_redirected_to macropost_path(assigns(:macropost))
  end

  test "should destroy macropost" do
    assert_difference('Macropost.count', -1) do
      delete :destroy, id: @macropost
    end

    assert_redirected_to macroposts_path
  end
end
