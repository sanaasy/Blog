class AddTaggingsIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :taggings_id, :integer
  end
end
