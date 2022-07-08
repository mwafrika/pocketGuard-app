class CreateTransancts < ActiveRecord::Migration[7.0]
  def change
    create_table :transancts do |t|
      t.timestamps
      t.string :name
      t.integer :amount, default: 0
    end
  end
end
