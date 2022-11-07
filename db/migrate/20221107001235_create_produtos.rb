class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.float :sku
      t.string :nome
      t.string :cor
      t.string :tamanho
      t.integer :quantidade
      t.string :posicao_estocada
      t.string :posicao_em_venda
      t.text :descricao
      t.float :preco_compra
      t.float :preco_venda

      t.timestamps
    end
  end
end
