require 'test_helper'

class ActualitiesControllerTest < ActionController::TestCase
  setup do
    @actuality = actualities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actualities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actuality" do
    assert_difference('Actuality.count') do
      post :create, actuality: { content: @actuality.content, description: @actuality.description, title: @actuality.title }
    end

    assert_redirected_to actuality_path(assigns(:actuality))
  end

  test "should show actuality" do
    get :show, id: @actuality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actuality
    assert_response :success
  end

  test "should update actuality" do
    patch :update, id: @actuality, actuality: { content: @actuality.content, description: @actuality.description, title: @actuality.title }
    assert_redirected_to actuality_path(assigns(:actuality))
  end

  test "should destroy actuality" do
    assert_difference('Actuality.count', -1) do
      delete :destroy, id: @actuality
    end

    assert_redirected_to actualities_path
  end
end
