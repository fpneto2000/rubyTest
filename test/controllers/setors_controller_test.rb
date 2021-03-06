require 'test_helper'

class SetorsControllerTest < ActionController::TestCase
  setup do
    @setor = setors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:setors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create setor" do
    assert_difference('Setor.count') do
      post :create, setor: { descr: @setor.descr }
    end

    assert_redirected_to setor_path(assigns(:setor))
  end

  test "should show setor" do
    get :show, id: @setor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @setor
    assert_response :success
  end

  test "should update setor" do
    patch :update, id: @setor, setor: { descr: @setor.descr }
    assert_redirected_to setor_path(assigns(:setor))
  end

  test "should destroy setor" do
    assert_difference('Setor.count', -1) do
      delete :destroy, id: @setor
    end

    assert_redirected_to setors_path
  end
end
