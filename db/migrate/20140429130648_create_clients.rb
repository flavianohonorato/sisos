class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.integer :telefone
      t.string :endereco
    end
  end
end
