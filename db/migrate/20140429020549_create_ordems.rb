class CreateOrdems < ActiveRecord::Migration
  def change
    create_table :ordems do |t|
      t.text :description
      t.string :status
      t.references :os, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
