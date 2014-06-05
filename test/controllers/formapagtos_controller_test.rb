require 'test_helper'

class FormapagtosControllerTest < ActionController::TestCase
  setup do
    @formapagto = formapagtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formapagtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formapagto" do
    assert_difference('Formapagto.count') do
      post :create, formapagto: { descr: @formapagto.descr }
    end

    assert_redirected_to formapagto_path(assigns(:formapagto))
  end

  test "should show formapagto" do
    get :show, id: @formapagto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formapagto
    assert_response :success
  end

  test "should update formapagto" do
    patch :update, id: @formapagto, formapagto: { descr: @formapagto.descr }
    assert_redirected_to formapagto_path(assigns(:formapagto))
  end

  test "should destroy formapagto" do
    assert_difference('Formapagto.count', -1) do
      delete :destroy, id: @formapagto
    end

    assert_redirected_to formapagtos_path
  end
end
