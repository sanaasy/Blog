class AddTagIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :tag_id, :integer
  end
end
