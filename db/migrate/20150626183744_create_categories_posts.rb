class CreateCategoriesPosts < ActiveRecord::Migration
  def change
    create_table :categories_posts, id: false do |t|
      t.belongs_to :category
      t.belongs_to :post, index: true
    end
  end
end
