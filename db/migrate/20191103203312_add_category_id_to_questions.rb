class AddCategoryIdToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :category_id, :integer
  end
end
