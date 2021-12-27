class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :is_online, default: false
      t.datetime :last_seen
      t.timestamps
    end
  end
end
