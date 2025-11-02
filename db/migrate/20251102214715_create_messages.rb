class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.string :body, null: false

      t.timestamps

      t.references :user, null: false
      t.references :chat, null: false
    end
  end
end
