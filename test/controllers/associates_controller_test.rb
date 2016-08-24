require 'test_helper'

class AssociatesControllerTest < ActionController::TestCase
  setup do
    @associate = associates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:associates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create associate" do
    assert_difference('Associate.count') do
      post :create, associate: { associate_number: @associate.associate_number, association_date: @associate.association_date, payment: @associate.payment }
    end

    assert_redirected_to associate_path(assigns(:associate))
  end

  test "should show associate" do
    get :show, id: @associate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @associate
    assert_response :success
  end

  test "should update associate" do
    patch :update, id: @associate, associate: { associate_number: @associate.associate_number, association_date: @associate.association_date, payment: @associate.payment }
    assert_redirected_to associate_path(assigns(:associate))
  end

  test "should destroy associate" do
    assert_difference('Associate.count', -1) do
      delete :destroy, id: @associate
    end

    assert_redirected_to associates_path
  end
end
