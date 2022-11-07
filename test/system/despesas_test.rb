require "application_system_test_case"

class DespesasTest < ApplicationSystemTestCase
  setup do
    @despesa = despesas(:one)
  end

  test "visiting the index" do
    visit despesas_url
    assert_selector "h1", text: "Despesas"
  end

  test "should create despesa" do
    visit despesas_url
    click_on "New despesa"

    fill_in "Descricao", with: @despesa.descricao
    fill_in "Nome", with: @despesa.nome
    fill_in "Valor", with: @despesa.valor
    click_on "Create Despesa"

    assert_text "Despesa was successfully created"
    click_on "Back"
  end

  test "should update Despesa" do
    visit despesa_url(@despesa)
    click_on "Edit this despesa", match: :first

    fill_in "Descricao", with: @despesa.descricao
    fill_in "Nome", with: @despesa.nome
    fill_in "Valor", with: @despesa.valor
    click_on "Update Despesa"

    assert_text "Despesa was successfully updated"
    click_on "Back"
  end

  test "should destroy Despesa" do
    visit despesa_url(@despesa)
    click_on "Destroy this despesa", match: :first

    assert_text "Despesa was successfully destroyed"
  end
end
