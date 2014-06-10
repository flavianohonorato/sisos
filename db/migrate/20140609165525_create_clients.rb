class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string :name
    	t.string :email
    	t.integer :phone
    	t.date :birthday
    	t.string :address
    end
  end
end
