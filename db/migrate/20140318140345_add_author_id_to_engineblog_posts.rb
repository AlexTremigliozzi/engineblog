class AddAuthorIdToEngineblogPosts < ActiveRecord::Migration
  def change
    add_column :engineblog_posts, :author_id, :integer
  end
end
