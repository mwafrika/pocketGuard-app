class CreateCategoryTransacts < ActiveRecord::Migration[7.0]
  def change
    create_table :category_transacts do |t|
      t.belongs_to :category
      t.belongs_to :transanct

      t.timestamps
    end
  end
end
