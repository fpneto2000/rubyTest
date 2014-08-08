require 'test_helper'

class FormarecsControllerTest < ActionController::TestCase
  setup do
    @formarec = formarecs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formarecs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formarec" do
    assert_difference('Formarec.count') do
      post :create, formarec: { descr: @formarec.descr }
    end

    assert_redirected_to formarec_path(assigns(:formarec))
  end

  test "should show formarec" do
    get :show, id: @formarec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formarec
    assert_response :success
  end

  test "should update formarec" do
    patch :update, id: @formarec, formarec: { descr: @formarec.descr }
    assert_redirected_to formarec_path(assigns(:formarec))
  end

  test "should destroy formarec" do
    assert_difference('Formarec.count', -1) do
      delete :destroy, id: @formarec
    end

    assert_redirected_to formarecs_path
  end
end
