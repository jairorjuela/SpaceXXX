class AddUserToLaunch < ActiveRecord::Migration[5.2]
  def change
    add_reference :launches, :user, foreign_key: true
  end
end
