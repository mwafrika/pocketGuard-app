class AddReferencesToTables < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories, :users, column: :user_id, type: :integer
    add_foreign_key :transancts, :users, column: :user_id, type: :integer
    add_foreign_key :category_transacts, :categories, column: :category_id, type: :integer
    add_foreign_key :category_transacts, :transancts, column: :transanct_id, type: :integer
  end
end
