require 'test_helper'

class ReceitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receit" do
    assert_difference('Receit.count') do
      post :create, :receit => { }
    end

    assert_redirected_to receit_path(assigns(:receit))
  end

  test "should show receit" do
    get :show, :id => receits(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => receits(:one).to_param
    assert_response :success
  end

  test "should update receit" do
    put :update, :id => receits(:one).to_param, :receit => { }
    assert_redirected_to receit_path(assigns(:receit))
  end

  test "should destroy receit" do
    assert_difference('Receit.count', -1) do
      delete :destroy, :id => receits(:one).to_param
    end

    assert_redirected_to receits_path
  end
end
