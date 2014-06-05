require 'test_helper'

class FormaenviosControllerTest < ActionController::TestCase
  setup do
    @formaenvio = formaenvios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formaenvios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formaenvio" do
    assert_difference('Formaenvio.count') do
      post :create, formaenvio: { descr: @formaenvio.descr, prazo_dias: @formaenvio.prazo_dias }
    end

    assert_redirected_to formaenvio_path(assigns(:formaenvio))
  end

  test "should show formaenvio" do
    get :show, id: @formaenvio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formaenvio
    assert_response :success
  end

  test "should update formaenvio" do
    patch :update, id: @formaenvio, formaenvio: { descr: @formaenvio.descr, prazo_dias: @formaenvio.prazo_dias }
    assert_redirected_to formaenvio_path(assigns(:formaenvio))
  end

  test "should destroy formaenvio" do
    assert_difference('Formaenvio.count', -1) do
      delete :destroy, id: @formaenvio
    end

    assert_redirected_to formaenvios_path
  end
end
