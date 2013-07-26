require 'test_helper'

class OurblogsControllerTest < ActionController::TestCase
  setup do
    @ourblog = ourblogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ourblogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ourblog" do
    assert_difference('Ourblog.count') do
      post :create, ourblog: {  }
    end

    assert_redirected_to ourblog_path(assigns(:ourblog))
  end

  test "should show ourblog" do
    get :show, id: @ourblog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ourblog
    assert_response :success
  end

  test "should update ourblog" do
    put :update, id: @ourblog, ourblog: {  }
    assert_redirected_to ourblog_path(assigns(:ourblog))
  end

  test "should destroy ourblog" do
    assert_difference('Ourblog.count', -1) do
      delete :destroy, id: @ourblog
    end

    assert_redirected_to ourblogs_path
  end
end
