require 'test_helper'

class ParticipantesControllerTest < ActionController::TestCase
  setup do
    @participante = participantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participante" do
    assert_difference('Participante.count') do
      post :create, participante: { bairro: @participante.bairro, bairro_cob: @participante.bairro_cob, bairro_entrega: @participante.bairro_entrega, cep: @participante.cep, cep_cob: @participante.cep_cob, cep_entrega: @participante.cep_entrega, cidade: @participante.cidade, cidade_cob: @participante.cidade_cob, cidade_entrega: @participante.cidade_entrega, cli_ou_for: @participante.cli_ou_for, cnpj: @participante.cnpj, email_contato: @participante.email_contato, email_nfe: @participante.email_nfe, ender: @participante.ender, ender_cob: @participante.ender_cob, ender_entrega: @participante.ender_entrega, ie: @participante.ie, nome: @participante.nome, numero: @participante.numero, numero_cob: @participante.numero_cob, numero_entrega: @participante.numero_entrega, tel1: @participante.tel1, tel2: @participante.tel2, tel3: @participante.tel3, tipo: @participante.tipo, uf: @participante.uf, uf_cob: @participante.uf_cob, uf_entrega: @participante.uf_entrega }
    end

    assert_redirected_to participante_path(assigns(:participante))
  end

  test "should show participante" do
    get :show, id: @participante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participante
    assert_response :success
  end

  test "should update participante" do
    patch :update, id: @participante, participante: { bairro: @participante.bairro, bairro_cob: @participante.bairro_cob, bairro_entrega: @participante.bairro_entrega, cep: @participante.cep, cep_cob: @participante.cep_cob, cep_entrega: @participante.cep_entrega, cidade: @participante.cidade, cidade_cob: @participante.cidade_cob, cidade_entrega: @participante.cidade_entrega, cli_ou_for: @participante.cli_ou_for, cnpj: @participante.cnpj, email_contato: @participante.email_contato, email_nfe: @participante.email_nfe, ender: @participante.ender, ender_cob: @participante.ender_cob, ender_entrega: @participante.ender_entrega, ie: @participante.ie, nome: @participante.nome, numero: @participante.numero, numero_cob: @participante.numero_cob, numero_entrega: @participante.numero_entrega, tel1: @participante.tel1, tel2: @participante.tel2, tel3: @participante.tel3, tipo: @participante.tipo, uf: @participante.uf, uf_cob: @participante.uf_cob, uf_entrega: @participante.uf_entrega }
    assert_redirected_to participante_path(assigns(:participante))
  end

  test "should destroy participante" do
    assert_difference('Participante.count', -1) do
      delete :destroy, id: @participante
    end

    assert_redirected_to participantes_path
  end
end
