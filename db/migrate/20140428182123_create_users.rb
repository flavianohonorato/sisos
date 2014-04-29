class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
    	t.string :name, :null => false
    	t.string :email, :null => false, :unique => true
    	t.string :endereco, :null => false
    	t.string :password_hash, :null => false
    	t.string :password_salt, :null => false

    	t.timestamps
    end
  end

  def down
  	drop_table :users
  end
end
