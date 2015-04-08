class AddCategoriaToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :categoria, :string
  end
end
