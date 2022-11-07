require "application_system_test_case"

class ProdutosTest < ApplicationSystemTestCase
  setup do
    @produto = produtos(:one)
  end

  test "visiting the index" do
    visit produtos_url
    assert_selector "h1", text: "Produtos"
  end

  test "should create produto" do
    visit produtos_url
    click_on "New produto"

    fill_in "Cor", with: @produto.cor
    fill_in "Descricao", with: @produto.descricao
    fill_in "Nome", with: @produto.nome
    fill_in "Posicao em venda", with: @produto.posicao_em_venda
    fill_in "Posicao estocada", with: @produto.posicao_estocada
    fill_in "Preco compra", with: @produto.preco_compra
    fill_in "Preco venda", with: @produto.preco_venda
    fill_in "Quantidade", with: @produto.quantidade
    fill_in "Sku", with: @produto.sku
    fill_in "Tamanho", with: @produto.tamanho
    click_on "Create Produto"

    assert_text "Produto was successfully created"
    click_on "Back"
  end

  test "should update Produto" do
    visit produto_url(@produto)
    click_on "Edit this produto", match: :first

    fill_in "Cor", with: @produto.cor
    fill_in "Descricao", with: @produto.descricao
    fill_in "Nome", with: @produto.nome
    fill_in "Posicao em venda", with: @produto.posicao_em_venda
    fill_in "Posicao estocada", with: @produto.posicao_estocada
    fill_in "Preco compra", with: @produto.preco_compra
    fill_in "Preco venda", with: @produto.preco_venda
    fill_in "Quantidade", with: @produto.quantidade
    fill_in "Sku", with: @produto.sku
    fill_in "Tamanho", with: @produto.tamanho
    click_on "Update Produto"

    assert_text "Produto was successfully updated"
    click_on "Back"
  end

  test "should destroy Produto" do
    visit produto_url(@produto)
    click_on "Destroy this produto", match: :first

    assert_text "Produto was successfully destroyed"
  end
end
