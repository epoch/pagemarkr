class AddClickCountToBookmarks < ActiveRecord::Migration[5.2]
  def change
    add_column :bookmarks, :click_count, :integer, default: 0
  end
end
