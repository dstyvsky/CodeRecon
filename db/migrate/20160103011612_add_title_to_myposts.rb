class AddTitleToMyposts < ActiveRecord::Migration
  def change
    add_column :myposts, :title, :string
  end
end
