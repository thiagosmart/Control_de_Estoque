class CreateDespesas < ActiveRecord::Migration[7.0]
  def change
    create_table :despesas do |t|
      t.string :nome
      t.string :descricao
      t.float :valor

      t.timestamps
    end
  end
end
