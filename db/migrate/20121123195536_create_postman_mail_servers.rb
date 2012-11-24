class CreatePostmanMailServers < ActiveRecord::Migration
  def change
    create_table :postman_mail_servers do |t|
      t.string :name,            null: false, unique: true
      t.string :delivery_method, null: false, default: 'smtp'
      t.text   :settings,        null: false

      t.timestamps
    end
  end
end
