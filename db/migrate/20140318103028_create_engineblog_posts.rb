class CreateEngineblogPosts < ActiveRecord::Migration
  def change
    create_table :engineblog_posts do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
