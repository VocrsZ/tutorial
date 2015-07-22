class AddNicknameToUsers < ActiveRecord::Migration
  def up
    add_column :users, :nickname, :string
    add_index :users, :nickname

    users = User.all
    users.each do |usr|
      usr.update_attribute(:nickname, usr.email.split('@')[0]) if usr.nickname.nil?
    end
  end

  def down
    remove_column :users, :nickname, :string
  end
end
