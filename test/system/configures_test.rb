require "application_system_test_case"

class ConfiguresTest < ApplicationSystemTestCase
  setup do
    @configure = configures(:one)
  end

  test "visiting the index" do
    visit configures_url
    assert_selector "h1", text: "Configures"
  end

  test "creating a Configure" do
    visit configures_url
    click_on "New Configure"

    check "Cpf" if @configure.Cpf
    check "Datadenascimento" if @configure.DataDeNascimento
    check "Email" if @configure.Email
    check "Genero" if @configure.Genero
    fill_in "Maximodepontosporcompra", with: @configure.MaximoDePontosPorCompra
    check "Numerodetelefone" if @configure.NumeroDeTelefone
    fill_in "Validadedospontos", with: @configure.ValidadeDosPontos
    fill_in "Valordoponto", with: @configure.ValorDoPonto
    click_on "Create Configure"

    assert_text "Configure was successfully created"
    click_on "Back"
  end

  test "updating a Configure" do
    visit configures_url
    click_on "Edit", match: :first

    check "Cpf" if @configure.Cpf
    check "Datadenascimento" if @configure.DataDeNascimento
    check "Email" if @configure.Email
    check "Genero" if @configure.Genero
    fill_in "Maximodepontosporcompra", with: @configure.MaximoDePontosPorCompra
    check "Numerodetelefone" if @configure.NumeroDeTelefone
    fill_in "Validadedospontos", with: @configure.ValidadeDosPontos
    fill_in "Valordoponto", with: @configure.ValorDoPonto
    click_on "Update Configure"

    assert_text "Configure was successfully updated"
    click_on "Back"
  end

  test "destroying a Configure" do
    visit configures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Configure was successfully destroyed"
  end
end
