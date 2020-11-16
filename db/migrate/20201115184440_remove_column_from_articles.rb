class RemoveColumnFromArticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :published_date, :datetime
  end
end
