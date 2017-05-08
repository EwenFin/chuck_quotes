class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :quote
      t.integer :awesome

      t.timestamps null: false
    end
  end
end
