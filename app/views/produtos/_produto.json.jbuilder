json.extract! produto, :id, :sku, :nome, :cor, :tamanho, :quantidade, :posicao_estocada, :posicao_em_venda, :descricao, :preco_compra, :preco_venda, :created_at, :updated_at
json.url produto_url(produto, format: :json)
