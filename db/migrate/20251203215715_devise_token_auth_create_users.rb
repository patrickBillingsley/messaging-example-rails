class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[8.0]
  def change
    change_table(:users) do |t|
      ## Required
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Rememberable
      t.datetime :remember_created_at

      ## User Info
      t.string :email

      ## Tokens
      t.text :tokens
    end

    add_index :users, :email,                unique: true
    add_index :users, [:uid, :provider],     unique: true
  end
end
