require 'test_helper'

class MyContentsControllerTest < ActionController::TestCase
  setup do
    @my_content = my_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_content" do
    assert_difference('MyContent.count') do
      post :create, my_content: { about_content: @my_content.about_content, concept_content: @my_content.concept_content, home_content: @my_content.home_content, program_content: @my_content.program_content }
    end

    assert_redirected_to my_content_path(assigns(:my_content))
  end

  test "should show my_content" do
    get :show, id: @my_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_content
    assert_response :success
  end

  test "should update my_content" do
    patch :update, id: @my_content, my_content: { about_content: @my_content.about_content, concept_content: @my_content.concept_content, home_content: @my_content.home_content, program_content: @my_content.program_content }
    assert_redirected_to my_content_path(assigns(:my_content))
  end

  test "should destroy my_content" do
    assert_difference('MyContent.count', -1) do
      delete :destroy, id: @my_content
    end

    assert_redirected_to my_contents_path
  end
end
