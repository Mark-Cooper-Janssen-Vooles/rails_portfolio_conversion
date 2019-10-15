class AddLinkUrlToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :link_url, :text
  end
end
