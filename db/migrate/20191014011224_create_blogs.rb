class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.text :image_url
      t.date :date
      t.text :hashes
      t.string :title
      t.text :body_text

      t.timestamps
    end
  end
end
