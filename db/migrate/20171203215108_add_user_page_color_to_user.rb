class AddUserPageColorToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_page_color, :string
  end
end
