class AddAdminToUsers < ActiveRecord::Migration[8.0]
  def change # adiciona o papel de admin como falso para os usuários
    add_column :users, :admin, :boolean, default: false
  end
end
