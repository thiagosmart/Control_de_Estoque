require "test_helper"

class ProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produto = produtos(:one)
  end

  test "should get index" do
    get produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_produto_url
    assert_response :success
  end

  test "should create produto" do
    assert_difference("Produto.count") do
      post produtos_url, params: { produto: { cor: @produto.cor, descricao: @produto.descricao, nome: @produto.nome, posicao_em_venda: @produto.posicao_em_venda, posicao_estocada: @produto.posicao_estocada, preco_compra: @produto.preco_compra, preco_venda: @produto.preco_venda, quantidade: @produto.quantidade, sku: @produto.sku, tamanho: @produto.tamanho } }
    end

    assert_redirected_to produto_url(Produto.last)
  end

  test "should show produto" do
    get produto_url(@produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_produto_url(@produto)
    assert_response :success
  end

  test "should update produto" do
    patch produto_url(@produto), params: { produto: { cor: @produto.cor, descricao: @produto.descricao, nome: @produto.nome, posicao_em_venda: @produto.posicao_em_venda, posicao_estocada: @produto.posicao_estocada, preco_compra: @produto.preco_compra, preco_venda: @produto.preco_venda, quantidade: @produto.quantidade, sku: @produto.sku, tamanho: @produto.tamanho } }
    assert_redirected_to produto_url(@produto)
  end

  test "should destroy produto" do
    assert_difference("Produto.count", -1) do
      delete produto_url(@produto)
    end

    assert_redirected_to produtos_url
  end
end
