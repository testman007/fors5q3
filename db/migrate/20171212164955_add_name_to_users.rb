class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
  end
end

# 執行完 rails db:migrate，至 rails console 裡更新 User 資料
# User.all.each do |user|
#   user.update!(name: user.email.split('@').first)
# end
