require 'test_helper'

class EntradaNfsControllerTest < ActionController::TestCase
  setup do
    @entrada_nf = entrada_nfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrada_nfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrada_nf" do
    assert_difference('EntradaNf.count') do
      post :create, entrada_nf: { data_emiss: @entrada_nf.data_emiss, data_entrada: @entrada_nf.data_entrada, numero: @entrada_nf.numero, participante_id: @entrada_nf.participante_id, serie_nf: @entrada_nf.serie_nf, tot_icms: @entrada_nf.tot_icms, tot_nf: @entrada_nf.tot_nf, tot_produtos: @entrada_nf.tot_produtos, vlr_desc: @entrada_nf.vlr_desc, vlr_dif_aliq: @entrada_nf.vlr_dif_aliq, vlr_encargos: @entrada_nf.vlr_encargos, vlr_frete: @entrada_nf.vlr_frete }
    end

    assert_redirected_to entrada_nf_path(assigns(:entrada_nf))
  end

  test "should show entrada_nf" do
    get :show, id: @entrada_nf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrada_nf
    assert_response :success
  end

  test "should update entrada_nf" do
    patch :update, id: @entrada_nf, entrada_nf: { data_emiss: @entrada_nf.data_emiss, data_entrada: @entrada_nf.data_entrada, numero: @entrada_nf.numero, participante_id: @entrada_nf.participante_id, serie_nf: @entrada_nf.serie_nf, tot_icms: @entrada_nf.tot_icms, tot_nf: @entrada_nf.tot_nf, tot_produtos: @entrada_nf.tot_produtos, vlr_desc: @entrada_nf.vlr_desc, vlr_dif_aliq: @entrada_nf.vlr_dif_aliq, vlr_encargos: @entrada_nf.vlr_encargos, vlr_frete: @entrada_nf.vlr_frete }
    assert_redirected_to entrada_nf_path(assigns(:entrada_nf))
  end

  test "should destroy entrada_nf" do
    assert_difference('EntradaNf.count', -1) do
      delete :destroy, id: @entrada_nf
    end

    assert_redirected_to entrada_nfs_path
  end
end
