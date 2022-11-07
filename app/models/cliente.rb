class Cliente < ApplicationRecord
    validates :nome, :telefone, presence: true, length: {minimum: 5, maximum: 20}
    validates :nome, :telefone, uniqueness: true
end
