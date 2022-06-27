class AddCategoryToTransaction < ActiveRecord::Migration[7.0]
  def change
    add_reference :transancts, :category, null: false, foreign_key: true
  end
end
