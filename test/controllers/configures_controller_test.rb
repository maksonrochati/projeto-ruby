require 'test_helper'

class ConfiguresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @configure = configures(:one)
  end

  test "should get index" do
    get configures_url
    assert_response :success
  end

  test "should get new" do
    get new_configure_url
    assert_response :success
  end

  test "should create configure" do
    assert_difference('Configure.count') do
      post configures_url, params: { configure: { Cpf: @configure.Cpf, DataDeNascimento: @configure.DataDeNascimento, Email: @configure.Email, Genero: @configure.Genero, MaximoDePontosPorCompra: @configure.MaximoDePontosPorCompra, NumeroDeTelefone: @configure.NumeroDeTelefone, ValidadeDosPontos: @configure.ValidadeDosPontos, ValorDoPonto: @configure.ValorDoPonto } }
    end

    assert_redirected_to configure_url(Configure.last)
  end

  test "should show configure" do
    get configure_url(@configure)
    assert_response :success
  end

  test "should get edit" do
    get edit_configure_url(@configure)
    assert_response :success
  end

  test "should update configure" do
    patch configure_url(@configure), params: { configure: { Cpf: @configure.Cpf, DataDeNascimento: @configure.DataDeNascimento, Email: @configure.Email, Genero: @configure.Genero, MaximoDePontosPorCompra: @configure.MaximoDePontosPorCompra, NumeroDeTelefone: @configure.NumeroDeTelefone, ValidadeDosPontos: @configure.ValidadeDosPontos, ValorDoPonto: @configure.ValorDoPonto } }
    assert_redirected_to configure_url(@configure)
  end

  test "should destroy configure" do
    assert_difference('Configure.count', -1) do
      delete configure_url(@configure)
    end

    assert_redirected_to configures_url
  end
end
