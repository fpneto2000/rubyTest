require 'test_helper'

class SerienumsControllerTest < ActionController::TestCase
  setup do
    @serienum = serienums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serienums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serienum" do
    assert_difference('Serienum.count') do
      post :create, serienum: { altura_ce: @serienum.altura_ce, altura_se: @serienum.altura_se, codigo_forn: @serienum.codigo_forn, custo_liq: @serienum.custo_liq, estoque: @serienum.estoque, fabricante_id: @serienum.fabricante_id, fornecedor_id: @serienum.fornecedor_id, larg_ce: @serienum.larg_ce, larg_se: @serienum.larg_se, numero: @serienum.numero, peso_ce: @serienum.peso_ce, peso_se: @serienum.peso_se, preco_venda: @serienum.preco_venda, produto_id: @serienum.produto_id, profund_ce: @serienum.profund_ce, profund_se: @serienum.profund_se }
    end

    assert_redirected_to serienum_path(assigns(:serienum))
  end

  test "should show serienum" do
    get :show, id: @serienum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serienum
    assert_response :success
  end

  test "should update serienum" do
    patch :update, id: @serienum, serienum: { altura_ce: @serienum.altura_ce, altura_se: @serienum.altura_se, codigo_forn: @serienum.codigo_forn, custo_liq: @serienum.custo_liq, estoque: @serienum.estoque, fabricante_id: @serienum.fabricante_id, fornecedor_id: @serienum.fornecedor_id, larg_ce: @serienum.larg_ce, larg_se: @serienum.larg_se, numero: @serienum.numero, peso_ce: @serienum.peso_ce, peso_se: @serienum.peso_se, preco_venda: @serienum.preco_venda, produto_id: @serienum.produto_id, profund_ce: @serienum.profund_ce, profund_se: @serienum.profund_se }
    assert_redirected_to serienum_path(assigns(:serienum))
  end

  test "should destroy serienum" do
    assert_difference('Serienum.count', -1) do
      delete :destroy, id: @serienum
    end

    assert_redirected_to serienums_path
  end
end
