class CreateChats < ActiveRecord::Migration[8.0]
  def change
    create_table :chats do |t|
      t.timestamps
    end

    create_join_table :users, :chats, table_name: :chat_memberships do |t|
      t.index [ :user_id, :chat_id ]
    end
  end
end
