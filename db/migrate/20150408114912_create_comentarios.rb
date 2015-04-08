class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :comment
      t.integer :likes
      t.references :post, index: true

      t.timestamps
    end
     add_foreign_key :comentarios, :posts
  end
end






