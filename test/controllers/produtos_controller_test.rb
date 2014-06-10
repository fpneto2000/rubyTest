require 'test_helper'

class ProdutosControllerTest < ActionController::TestCase
  setup do
    @produto = produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produto" do
    assert_difference('Produto.count') do
      post :create, produto: { barras: @produto.barras, departamento_id: @produto.departamento_id, descr: @produto.descr, descr_externa: @produto.descr_externa, end_gondola: @produto.end_gondola, finalidade_id: @produto.finalidade_id, garantia_meses: @produto.garantia_meses, marg_max: @produto.marg_max, marg_med: @produto.marg_med, marg_min: @produto.marg_min, ncm: @produto.ncm, unid_med: @produto.unid_med }
    end

    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should show produto" do
    get :show, id: @produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produto
    assert_response :success
  end

  test "should update produto" do
    patch :update, id: @produto, produto: { barras: @produto.barras, departamento_id: @produto.departamento_id, descr: @produto.descr, descr_externa: @produto.descr_externa, end_gondola: @produto.end_gondola, finalidade_id: @produto.finalidade_id, garantia_meses: @produto.garantia_meses, marg_max: @produto.marg_max, marg_med: @produto.marg_med, marg_min: @produto.marg_min, ncm: @produto.ncm, unid_med: @produto.unid_med }
    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should destroy produto" do
    assert_difference('Produto.count', -1) do
      delete :destroy, id: @produto
    end

    assert_redirected_to produtos_path
  end
end
