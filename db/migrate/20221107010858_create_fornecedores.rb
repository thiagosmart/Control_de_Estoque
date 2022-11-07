class CreateFornecedores < ActiveRecord::Migration[7.0]
  def change
    create_table :fornecedores do |t|
      t.string :nome
      t.string :tipo_produtos
      t.string :telefone
      t.string :endereco
      t.string :email

      t.timestamps
    end
  end
end
