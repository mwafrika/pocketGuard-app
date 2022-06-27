class CreateTransancts < ActiveRecord::Migration[7.0]
  def change
    create_table :transancts do |t|

      t.timestamps
    end
  end
end
