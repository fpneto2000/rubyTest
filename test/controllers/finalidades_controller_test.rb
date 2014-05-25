require 'test_helper'

class FinalidadesControllerTest < ActionController::TestCase
  setup do
    @finalidade = finalidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finalidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finalidade" do
    assert_difference('Finalidade.count') do
      post :create, finalidade: { descr: @finalidade.descr, vlrcomissmark: @finalidade.vlrcomissmark, vlrembalagem: @finalidade.vlrembalagem, vlrencargos: @finalidade.vlrencargos, vlrgate: @finalidade.vlrgate, vlrmarketing: @finalidade.vlrmarketing }
    end

    assert_redirected_to finalidade_path(assigns(:finalidade))
  end

  test "should show finalidade" do
    get :show, id: @finalidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finalidade
    assert_response :success
  end

  test "should update finalidade" do
    patch :update, id: @finalidade, finalidade: { descr: @finalidade.descr, vlrcomissmark: @finalidade.vlrcomissmark, vlrembalagem: @finalidade.vlrembalagem, vlrencargos: @finalidade.vlrencargos, vlrgate: @finalidade.vlrgate, vlrmarketing: @finalidade.vlrmarketing }
    assert_redirected_to finalidade_path(assigns(:finalidade))
  end

  test "should destroy finalidade" do
    assert_difference('Finalidade.count', -1) do
      delete :destroy, id: @finalidade
    end

    assert_redirected_to finalidades_path
  end
end
